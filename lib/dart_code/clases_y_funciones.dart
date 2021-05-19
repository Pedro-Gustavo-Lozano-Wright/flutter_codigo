


class TestClass {
  void disp() {
    print("Hello World");
  }
}

void main() {
  TestClass c = new TestClass();
  c.disp();
}


void funciones(){
  

  void parametros_opcionales_con_corchetes([String opcional_1, String opcional_2]){
    print("Mi nombre es: $opcional_1 $opcional_2 ");
  }

  void un_parametro_opcional_con_corchetes(String nesesario, [String opcional_1 = ""]){
    print("Mi nombre es: $nesesario $opcional_1");
  }

  void un_parametro_seleccionable_con_llaves(String nombre,{String apellido = ""}){
    print("$nombre $apellido");
  }

  void parametros_seleccionables_con_llaves({String nombre,String apellido = ""}){
    print("$nombre $apellido");
  }

  //funciones anonimas
  //var randomNumbers = List.of({14, 51, 23, 45, 6, 3, 22, 1});
  //var evenNumbers = randomNumbers.where((number => number.isEven));
  //print(evenNumbers);

  var randomNumbers = List.of({14, 51, 23, 45, 6, 3, 22, 1});
  var evenNumbers = randomNumbers.where((number) => number.isEven);
  evenNumbers = evenNumbers.toList()..sort();
  print(evenNumbers);
  
}

