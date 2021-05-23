abstract class Animal {
  void respirar() => print('Estoy respirando');
}

abstract class Mamifero extends Animal {
  void sngre_caliente() => print('Tengo la sangre calinente');
}

abstract class Ave extends Animal {
  void aletear() => print('Tengo la alas');
}
abstract class Pez extends Animal{
  void respiracion_branquial() => print('Tengo la branqueas y respiro agua');
}


mixin Volador {
  void volar() => print('Estoy volando');
}
mixin Caminante {
  void caminar() => print('Estoy caminando');
}
abstract class Nadador {
  void nadar() => print('Estoy nadando');
}


class Delfin extends Mamifero with Nadador {

}
class Murcielago extends Mamifero with Caminante, Volador {

}
class Gato extends Mamifero with Caminante {

}
class Paloma extends Ave with Caminante, Volador {

}
class Pato extends Ave with Caminante, Volador, Nadador {

}

void funcion_principal(){
  Pato patito_feo = new Pato();
  patito_feo
    ..aletear()
    ..nadar();
}