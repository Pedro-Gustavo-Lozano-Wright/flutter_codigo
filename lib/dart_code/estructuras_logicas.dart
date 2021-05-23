
void if_compacto(){
  var a = 5;
  var res = a > 3 ? "se cumple la condicion" : "no se cumple la condicion";
  print(res);

  a > 3 ? print("verdadero") : print("falso");

}


void logical_operators() {
  var a = 10;
  var b = 12;
  var res = (a<b)&&(b>10);
  print(res);
  res = (a>b)||(b<10);
  print(res);
}

var lis_lista = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

void siclos(){



  for (var object in lis_lista) {
    print(object);
  }

  lis_lista.forEach((element) {
    print(element.toString());
  });


  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  int year = 0;
  while (year < 2021) {
    year += 1;
  }

  bool bool_select = true;
  var visibility = bool_select ? 'public' : 'private';// Para la expresión verifica si es null usamos ??
  print(visibility);


  int expr1;
  int expr2 = 3;
  int numero = expr1 ?? expr2;// Si expr1 no es null, evalúa y devuelve su valor, de lo contrario evalúa y devuelve el valor de expr2.
  print(numero);


  String texto_;
  String playerName(String name) => name ?? 'la variable es nula';
  print(playerName(texto_));

  var i = 1;
  while(i<=10) {
    print(i);
    if (i == 5) {
      print("salir al 5 saltar el resto del siclo");
      break ;
      //i = 7;
      //continue
    }
    i++;
  }


  var grado = "A";
  switch(grado) {
    case "A": {  print("Excelente"); }
    break;

    case "B": {  print("Bueno"); }
    break;

    case "C": {  print("Regular"); }
    break;

    case "D": {  print("Mala"); }
    break;

    default: { print("Elección no válida"); }
    break;
  }


  //el ciclo "do" no evalúa la condición
  // por primera vez directamente se ejecuta.
  int countDown = 5;
  do {
    print("Time remaining: $countDown");
    countDown--;
  } while (countDown != 0);

}
  /*

  + 		//Suma
  - 		//Resta
  -expr 	//Negacion
  * 		//Multiplicacion
  / 		//Divicion
  ~/ 		//Divide y retorna un resultado entero
  % 		//Modulo, retorna el resto de la division


  == 	// Es igual
  != 	// No es igual
  > 	// Mayor que
  < 	// Menor que
  >= 	// Mayor o igual que
  <= 	// Menor o igual que


  += 	// a = a + b
  -= 	// a = a - b
  *= 	// a = a * b
  /= 	// a = a / b
  ~/= // a = a ~/ b
  %= 	// a = a % b
  <<= // a = a << b
  >>= // a = a >> b
  &) 	// a = a & b
  ^= 	// a = a ^ b
  |= 	// a = a | b

  == !=   //equality
  !expr 	// invierte la expresion, de falsa a true, y viceversa.
  !! 		// or logico
  && 		// and logico

  // Para asignar un valor en base a un expresión booleana usamos ?:
  var visibility = isPublic ? 'public' : 'private';// Para la expresión verifica si es null usamos ??
  String playerName(String name) => name ?? 'Guest';

  */



