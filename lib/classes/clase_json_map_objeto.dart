import 'dart:convert';

class User {
  final String name;
  final String email;

  User(this.name, this.email);

  //convertir de JSON a objrto

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() =>
      {
        'name': name,
        'email': email,
      };
}



void convertir_de_json_a_map_y_de_map_a_objeto_y_de_objeto_a_json(){

  String str_json =
    '''
    {"name": "John Smith",
    "email": "john@example.com"}
    ''';
  //de_json_a_map
//Map<String, dynamic>
  Map userMap = jsonDecode(str_json);

  print('nombre: ${userMap['name']} del map');
  print('correo: ${userMap['email']} del map');

  //de_map_a_objeto
  var user = new User.fromJson(userMap);

  print('nombre: ${user.name} del objeto');
  print('correo: ${user.email} del objeto');

  //de_objeto_a_json
  String json_obj = jsonEncode(user);
  print('JSON ' + json_obj);
}