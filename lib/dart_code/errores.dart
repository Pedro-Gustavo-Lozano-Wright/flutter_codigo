

void errores(){

  var one = 1;
  //la comparacion es correcta y no manda mensaje de error
  assert(one == 1,"mensaje de error");


  //se manda mensaje de error
  assert(one == 2,"mensaje de error");


  //el error es atrapado en el try catch
  try {
    assert(one == 2,"mensaje de error");
  } catch (err) {
    print("error en try catch");
  }

  throw FormatException('Algo fallo');

}

void pruebasQA(){

  /// QA (Quality assurance)

  int resulttado = 4;
  int esperado = 3;
  assert((esperado == resulttado), "Error se esperaba ${esperado} pero el resulrado fue ${resulttado}");


  ///Unit Test                   probar una unidad.
  ///Test de integración         varias unidades funcionando juntas
  ///End tests,                  todas las unidades

  ///las pruebas deben ser tanto en en la logica y el comportamiento del UI


}
