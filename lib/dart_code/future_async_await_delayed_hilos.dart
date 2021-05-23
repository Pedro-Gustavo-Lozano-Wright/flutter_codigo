
import 'dart:convert';
import 'dart:io';

void stream_canal_de_datos(){

  Stream<int> countStream(int max) async* {
    for (int i = 0; i < max; i++) {
      yield i;
    }
  }

  Future<int> sumStream(Stream<int> stream) async {
    int sum = 0;
    await for (int value in stream) {
      sum += value;
    }
    return sum;
  }

  void main() async {
    Stream<int> stream = countStream(10);
    int sum = await sumStream(stream);
    print(sum); // 45
  }



  Stream<List<int>> stream = File('quotes.txt').openRead();
  stream.transform(utf8.decoder).forEach(print);


  HttpServer.bind('127.0.0.1', 4444)
      .then((server) => print('${server.isBroadcast}'))
      .catchError(print);


}

void hilo_se_ejecuta_paralelamente(){
  Future<void> funcion_rama_se_ejecuta_paralelamente() {
    return Future.delayed(Duration(seconds: 2), ()
    {print('Esto pasa despues');});
  }
  void main() {
    funcion_rama_se_ejecuta_paralelamente();
    print('Esto pasa primero');
  }
}

void espera_a_una_funcion_async(){

  Future<String> coneccion() =>
      Future.delayed(
        Duration(seconds: 2),
            () => 'Correcta',
      );

  Future<String> message() async {
    var order = await coneccion();
    return 'La respuesta es: $order';
  }

  //fucncon que no devuelbe nada
  Future<void> main() async {
    print('Esperando respuesta');
    print(await message());
  }

}

void esperando_respuesta_e_hilo_principal(){

  int delay = 5;

  Future<String> coneccion() {
    return Future.delayed(Duration(seconds: delay), () => 'Correcta');
  }

  void contador() {
    for (var i = 1; i <= delay; i++) {
      Future.delayed(Duration(seconds: i), () => print(i));
    }
  }

  Future<void> message() async {
    print('Esperando...');
    var order = await coneccion();
    print('La respuesta es: $order');
  }

  Future<void> main() async {
    contador();
    await message();
  }

}

void errores_en_coneccion(){

  Future<String> coneccion() {
    var str = Future.delayed(
        Duration(seconds: 4),
            () => throw 'Cannot locate user order');
    return str;
  }

  Future<void> message() async {
    try {
      var order = await coneccion();
      print('Esperando...');
      print(order);
    } catch (err) {
      print('Caught error: $err');
    }
  }

  Future<void> main() async {
    await message();
  }

}

