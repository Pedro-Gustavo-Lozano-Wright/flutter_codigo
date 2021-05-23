main() {
  final persona = Persona();
  persona.nombre = 'Joe';
  persona.edad = 25;
  print(persona.toString());
}

class Persona {
  String nombre;
  int edad;
  int _valorPrivado;//solo se usa dentro de la clase



  /*Persona(String nombre, int edad){
    this.nombre = nombre;
    this.edad = edad;
  }*/


  int get valorPrivado{
    //return _valorPrivado * 10;
    return _valorPrivado;
  }

  set valorPrivado(int valor){
    _valorPrivado = valor;
  }


  // Get y sets
  // Constructores
  // metodos
  // Con override indicamos que sobreescribimos el metodo "padre"
  @override
  String toString() {
    return 'Nombre: ${nombre}, Edad: ${edad}';
  }
}