
//https://esflutter.dev/docs/cookbook/persistence/sqlite

class Objeto {
  final int id;
  final String name;
  final int age;

  Objeto({this.id, this.name, this.age});

  // Convierte en un Map.
  // Las llaves deben corresponder con los nombres de las
  // columnas en la base de datos.
  Map<String, dynamic> toMap() {
    return {
      '_id': id,
      'texto': name,
      'numero': age,
    };
  }
}