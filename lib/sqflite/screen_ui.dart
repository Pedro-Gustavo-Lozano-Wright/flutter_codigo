import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'database_metodos_crud.dart';


class Persistencia extends StatefulWidget {
  @override
  _PersistenciaState createState() => _PersistenciaState();
}

class _PersistenciaState extends State<Persistencia> {

  bool _numberInputIsValid = true;
  int int_numero = 0;
  String str_texto = "";
  List<dynamic> lis_lista = [];
  String str_list = "";
  String str_db = "";

  final _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Persistencia")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(flex: 1,
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 300,
                    decoration: BoxDecoration(color: Colors.indigo),
                    alignment: Alignment(0, 0),
                    child: Text(
                      "Persistencia",
                      style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(height: 30,),

                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Enter an integer:',
                      errorText: _numberInputIsValid ? null : 'Please enter an integer!',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                    onChanged: (String val) {
                      final v = int.tryParse(val);
                      debugPrint('parsed value = $v');
                      if (v == null) {
                        setState(() => _numberInputIsValid = false);
                      } else {
                        setState(() {
                          _numberInputIsValid = true;
                          int_numero = int.parse(val);
                        } );
                      }
                    },
                  ),

                  TextField(
                    controller: this._controller,
                    maxLines: 1,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      counterText: '${this._controller.text.split(' ').length} words',
                      labelText: 'Texto:',
                      hintText: 'Esto es un string',
                      border: const OutlineInputBorder(),
                    ),
                    onChanged: (text) {
                      setState(() {
                        str_texto = text;
                      });
                    } ,
                  ),
                  RaisedButton(
                    child: Text("Nuevo"),
                    onPressed: () {
                      nuevo_elemento(str_texto, int_numero);

                      print(str_texto + int_numero.toString());
                    },
                  ),
                  RaisedButton(
                    child: Text("Actualizar ultimo"),
                    onPressed: () {

                      actualizar_por_id(lis_lista.length, str_texto, int_numero);
                    },
                  ),
                  RaisedButton(
                    child: Text("Borrar ultimo"),
                    onPressed: () {
                      borrar_por_id(lis_lista.length);
                    },
                  ),
                  RaisedButton(
                    child: Text("Leer"),
                    onPressed: () {
                      setState(() {
                        esperar_lectura_DB();
                        print("a");
                      });
                    },
                  ),
                  Text("\n" + str_list + "\n" + "\n" + str_db + "\n"),

                  RaisedButton(
                    child: Text("Cerrar esta pantalla"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> esperar_lectura_DB() async {
    lis_lista = await recuperar_BD();

    str_list = "";
    str_db = "";
    lis_lista.forEach((element) {
      str_list = str_list + element.toString() + "\n";

      var json_element = new Map();
      json_element = element;
      json_element.forEach((key, value) {
        str_db = str_db + " " + value.toString();
      });
      str_db = str_db + "\n";

    });
  }


}
