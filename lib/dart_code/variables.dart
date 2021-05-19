import 'dart:math';

import 'package:flutter/material.dart';

/// triple diagonal para documentacion

// un comentario

/*
   Multi-line comentario
*/



void final_y_const(){

  // el final jamas cambiara,
  // sera lo que exactamente declare el programador,
  // no importa si se resetea la aplicacion,o se borran los datos


  final name = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';

  //No se puede definir const dentro de una clase
  //Pero puedes en una función
  //Las variables constantes son implícitamente finales

}


void variables_numericas(){
  var y = 1.1;
  var exponents = 1.42e5;
  num x = 1; // num es un comodin entre todos los tipos de numeros
  x += 2.5;

// String -> int
  var one = int.parse('1');

// String -> double
  var onePointOne = double.parse('1.1');

// int -> String
  String oneAsString = 1.toString();

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);

  int impar = 3;
  if (impar.isOdd) {
    print("es impar");
  }

  int negativo = -3;
  print("es absoluto" + (negativo.abs().toString()));


  int int_ejemplo = 3;
  int_ejemplo++;
  print(int_ejemplo);
  int_ejemplo++;
  print(int_ejemplo);
  int_ejemplo--;
  print(int_ejemplo);
  int_ejemplo--;
  print(int_ejemplo);


  var myInt = int.parse('12345');
  assert(myInt is int);
  print(myInt);

  var myDouble = double.parse('123.45');
  assert(myDouble is double);
  print(myDouble); // 123.45

  int val = int.tryParse("31y") ?? 20;
  print((val * 2).toString());

  //ordenar una lista de numeros
  var randomNumbers = List.of({14, 51, 23, 45, 6, 3, 22, 1});
  randomNumbers.sort();
  print(randomNumbers);

  var generatedList = List.generate(10, (number) => number * Random().nextInt(50));
  print(generatedList);
  //10 números multiplicados por un número aleatorio entre 0 y 50
}

void variables_srings(){

  var s1 = 'Single quotes work';
  var s2 = "Double quotes work";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  int int_comp = s1.compareTo(s2);
  if(s1 == s2){
  print("s1 == s2");
  }
  print("inicio"[2]);
  print("multiplicar"*5);

  if("texto".startsWith('t')){
    print("starts With t");
  }

  if('texto'.contains('x')){
    print("contiene una x");
  }

  if('texto'.endsWith('o')){
    print("termina con una o");
  }
  int inicio_de_e = 'texto'.indexOf('e');

  var string_1 = "Hello world!";
  List split_list = string_1.split(" ");
  print(split_list);
  // ['Hello', 'world!'];

  var string_2 = "abba";
  string_2.split(RegExp(r"b*"));
  // ['a', 'a']

  var string_3 = 'Pub';
  string_3.split('');

  var variable = 'Text';
  print('Dart - $variable ');

  print('${variable.toUpperCase()} ');
  print('${variable.toLowerCase()} ');

  var sting_multi_triple =
  '''
  createmulti-line 
  strings de triple comila
  ''';

  var sting_multi_sextuple =
  """
  This is also a
  multi-line string 
  sextuple comilla
  """;

  var salto_de_linea_y_tabulacion = 'hola\teste es una tabulacion\ny este un salto de linea\\y estas en una barra invertida?\"y unas comillas';
  print(salto_de_linea_y_tabulacion);

  var marcar_caracteres_en_vez_de_salto_de_linea_y_tabulacion = r'hola\teste es una tabulacion\ny este un salto de linea\\y estas en una barra invertida?\"y unas comillas';
  print(marcar_caracteres_en_vez_de_salto_de_linea_y_tabulacion);

  var string = 'convertir ina lista en strings';
  List lis_stri = string.runes.map((rune) => String.fromCharCode(rune)).toList();
  print(lis_stri.toString());

  String modificado = 'resumen'.replaceAll(('e'), 'é'); // 'résumé'
  print(modificado);

  print('Hola mundo dart'.replaceFirst(RegExp(r'o'), '-'));
  print('Hola mundo dart'.replaceFirst(RegExp(r'o'), '-', 5));
  // String replaceFirst(Pattern from, String to, [int startIndex = 0]);

  var string_dart = 'dartlang';
  string_dart.substring(1);    // 'artlang'
  string_dart.substring(1, 4); // 'art'

  var str_con_espacios = ' Dart  ';
  var str_sin_espacios = str_con_espacios.trim();




}

void variables_listas(){

  List lista_1 = [];
  lista_1
    ..add(5)
    ..add(4)
    ..add(3)
    ..add(2)
    ..add(1);

  List numeros = [1,2,3,4,5,6,7];

  for (var numero in numeros) {
    print(numero);
  }

  List lista_2 = [];
  lista_2.add('UNO');
  lista_2.add('DOS');
  lista_2.add('TRES');
  lista_2.forEach((element) => print(element));

  Set<String> set = Set.from(lista_2);
  set.forEach((element) => print(element));

  List<String> colorList = ["Red,Yellow,Purple"];

  List<dynamic> dynamicList = ["Red",1];

  List numberList = List.of({1,2,3,4});

  var firstNumber = numberList[3];
  print(firstNumber);

  var elementAt = numberList.elementAt(3);
  print(elementAt);

  List icecream = ['chocolate', 'vanilla', 'orange'];
  icecream.forEach((item) {
    print('Nieve de $item ');
  });

  var list = List.from([1,2,3,4,5,6]);

  var topThreeList = list.take(3);
  print(topThreeList);

  var skipList = list.skip(3);
  print(skipList);

  // crear una vericion modificada de una lista  list.map
  var mappedList = list.map( (number) => number *2);
  print(mappedList);
  //(2,4,6,8)

}

void variables_mapas(){

  Map<int,String> nullMap;
//or

  Map<String,String> ingles_espanol_Map = {"red": "rojo","blue":"azul","pink":"roza"};
  var espanol = ingles_espanol_Map["red"];
  print(espanol);


  Map<String,String> frances_espanol_Map= {};
  frances_espanol_Map["rouge"] = "rojo";
  frances_espanol_Map["vie"] = "vida";
  ingles_espanol_Map.addAll(frances_espanol_Map);
  print(ingles_espanol_Map);

/*
  var json_element = new Map();
  json_element.forEach((key, value) {
    str_db = str_db + " " + value.toString();
  });
  str_db = str_db + "\n";
*/

}

void variables_set(){

  //no tienen una posición definida.
  //Si sw agrega un elemento igual a otro se se omite.
  Set colorSet = Set.from(["Red","Blue","Yellow","Black","Pink"]);
  print(colorSet);
  colorSet.remove("Red");
  print(colorSet);
  colorSet.add("White");
  print(colorSet);

}


