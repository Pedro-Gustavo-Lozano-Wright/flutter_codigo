
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


class Persona {
  String name;

  //getter method
  String get per_name {
    return name;
  }
  //setter method
  void set per_name(String name) {
    this.name = name;
  }
  //function definition
  void result() {
    print(name);
  }
}

void crear_instancia() {
  Persona persona_1 = new Persona();
  persona_1.name = "gus";
  persona_1.result(); //function call
}


void alggo(){

}