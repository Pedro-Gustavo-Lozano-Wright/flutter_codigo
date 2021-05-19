import 'database_sqflite.dart';

int filas_globales = 0;
String string_DB_global = "";
List<dynamic> base_de_datos_list = [];

final dbHelper = DatabaseHelper.instance;


void cargar_string_global_en_list_global(){

  base_de_datos_list.clear();
  int inicio_de_fila = 0;
  int fin_de_fila = 0;

  for(int i = 1; i <= string_DB_global.length; i++){
    fin_de_fila = (string_DB_global.indexOf("}",inicio_de_fila)) + 1 ;
    base_de_datos_list.add(string_DB_global.substring(inicio_de_fila,fin_de_fila));
    inicio_de_fila = fin_de_fila++;
  }

}


void nuevo_elemento(String texto, int numero) async {
  Map<String, dynamic> row = {
    DatabaseHelper.columnTexto : texto,
    DatabaseHelper.columnNumero : numero,
  };
  final id = await dbHelper.insert(row);
  print('inserted row id: $id');
}

Future<List> recuperar_BD() async {
  final allRows = await dbHelper.queryAllRows();
  print('query all rows:');
  List<dynamic> base_de_datos = [];
  allRows.forEach((element) {base_de_datos.add(element);});
  return base_de_datos;
}

void actualizar_por_id(int x_id, String x_texto, int numero) async {
  Map<String, dynamic> row = {
    DatabaseHelper.columnId   : x_id,
    DatabaseHelper.columnTexto : x_texto,
    DatabaseHelper.columnNumero : numero,
  };
  final rowsAffected = await dbHelper.update(row);
  print('updated $rowsAffected row(s)');
}

void borrar_por_id(int x_id) async {
  final id_ultimo = await dbHelper.queryRowCount();
  if(x_id>=id_ultimo){
    final rowsDeleted = await dbHelper.delete(x_id);
    print('deleted $rowsDeleted row(s): row $x_id');
  }
}



List<dynamic> divisor_items(String fila_de_items){

  List<dynamic> list_complementaria = [];

  list_complementaria.clear();

  int inicio_de_item = 0;
  int fin_de_item = 0;

  inicio_de_item = fila_de_items.indexOf("{_id: ") + 6 ;
  fin_de_item = fila_de_items.indexOf(", texto: ");
  list_complementaria.add(fila_de_items.substring(inicio_de_item,fin_de_item));

  inicio_de_item = fila_de_items.indexOf(", texto: ") + 10;
  fin_de_item = fila_de_items.indexOf(", numero: ");
  list_complementaria.add(fila_de_items.substring(inicio_de_item,fin_de_item));

  inicio_de_item = fila_de_items.indexOf(", numero: ") + 9;
  fin_de_item = fila_de_items.indexOf("}");
  list_complementaria.add(fila_de_items.substring(inicio_de_item,fin_de_item));


  return list_complementaria;
}

