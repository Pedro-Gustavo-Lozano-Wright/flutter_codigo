import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {

  static final _databaseName = "MyDatabase.db";
  static final _databaseVersion = 1;

  static final table = 'my_table';

  static final columnId = '_id';
  static final columnTexto = 'texto';
  static final columnNumero = 'numero';

  // make this a singleton class
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  // only have a single app-wide reference to the database
  static Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    // lazily instantiate the db the first time it is accessed
    _database = await _initDatabase();
    return _database;
  }

  // this opens the database (and creates it if it doesn't exist)
  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion,
        onCreate: _onCreate);
  }

  // SQL code to create the database table
  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $columnTexto TEXT NOT NULL,
            $columnNumero INTEGER NOT NULL
          )
          ''');
  }


  // Inserta una fila en la base de datos donde cada clave en el Mapa es un nombre de columna
  // y el valor es el valor de la columna. El valor de retorno es el id del
  // fila insertada.
  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(table, row);
  }

  // Todas las filas se devuelven como una lista de mapas, donde cada mapa es
  // una lista clave-valor de columnas.
  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await instance.database;
    return await db.query(table);
  }

// Todos los métodos (insertar, consultar, actualizar, eliminar) también se pueden hacer usando
  // comandos SQL sin formato. Este método utiliza una consulta sin procesar para dar el recuento de filas.
  Future<int> queryRowCount() async {
    Database db = await instance.database;
    return Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM $table'));
  }

  // Asumimos aquí que la columna de identificación en el mapa está configurada. El otro
  // los valores de columna se usarán para actualizar la fila.
  Future<int> update(Map<String, dynamic> row) async {
    Database db = await instance.database;
    int id = row[columnId];
    return await db.update(table, row, where: '$columnId = ?', whereArgs: [id]);
  }

  // Elimina la fila especificada por el id. El número de filas afectadas es
  // devuelto. Esto debería ser 1 mientras exista la fila.
  Future<int> delete(int id) async {
    Database db = await instance.database;
    return await db.delete(table, where: '$columnId = ?', whereArgs: [id]);
  }

/*    tengo que incorporar una clase para manejar la entrada de los objetos

  Future<List<Objeto>> objeto() async {
    // Obtiene una referencia de la base de datos
    final Database db = await database;

    // Consulta la tabla por todos los Dogs.
    final List<Map<String, dynamic>> maps = await db.query('dogs');

    // Convierte List<Map<String, dynamic> en List<Dog>.
    return List.generate(maps.length, (i) {
      return Objeto(
        id: maps[i]['id'],
        name: maps[i]['name'],
        age: maps[i]['age'],
      );
    });
  }

  */
}

