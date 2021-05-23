import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Objeto_usuario> fetchAlbum() async {
  final response =
  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    //var respuesta = response.body;
    return Objeto_usuario.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Objeto_usuario {
  final int userId;
  final int id;
  final String title;

  Objeto_usuario({
    this.userId,
    this.id,
    this.title,
  });

  factory Objeto_usuario.fromJson(Map<String, dynamic> json) {
    return Objeto_usuario(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}


class http_request_json extends StatefulWidget {
  http_request_json({Key key}) : super(key: key);

  @override
  _http_request_jsonState createState() => _http_request_jsonState();
}

class _http_request_jsonState extends State<http_request_json> {
  Future<Objeto_usuario> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  String request = "request" ;
  String request_json = "JSON" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON de internet '),
      ),
      body: Column(
        children: [
          Text(''),
          Text(request_json),
          Text(""),
          Center(
            child: FutureBuilder<Objeto_usuario>(
              future: futureAlbum,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Text(
                          '''
                          "userId": ${snapshot.data.userId}
                          "id": ${snapshot.data.id.toString()}
                          "title": "${snapshot.data.title}"
                          '''
                          ),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return CircularProgressIndicator();
              },
            ),
          ),

        ],
      ),
    );
  }

}