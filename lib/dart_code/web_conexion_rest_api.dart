import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class web_conexion extends StatefulWidget {
  @override
  _web_conexionState createState() => _web_conexionState();
}

class _web_conexionState extends State<web_conexion> {
  String text_info = "";


  var uri = Uri(
      scheme: 'https',
      host: 'example.org',
      path: '/foo/bar',
      fragment: 'frag');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("web_conexion_rest_api")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ListView(children: <Widget>[
              OutlineButton(
                onPressed: () {
                  main_coneccion1();
                },
                child: Text("tomar datos de la web 1"),
              ),
              OutlineButton(
                onPressed: () {

                  HttpServer.bind('127.0.0.1', 4444)
                      .then((server) => print('${server.isBroadcast}'))
                      .catchError(print);
                },
                child: Text("HttpServer 127.0.0.1"),
              ),
              OutlineButton(
                onPressed: () {

                  //https://api.flutter.dev/flutter/dart-io/dart-io-library.html

                  runZoned(() async {
                    var server = await HttpServer.bind('127.0.0.1', 4040);
                    server.listen((HttpRequest req) async {
                      if (req.uri.path == '/ws') {
                        var socket = await WebSocketTransformer.upgrade(req);
                        print(socket);
                      }
                    });
                  }, onError: (e) => print("An error occurred."));

                },
                child: Text("HttpServer socket"),
              ),
              OutlineButton(
                onPressed: () {
                },
                child: Text(""),
              ),
              Container(
                height: 20,
              ),
              Text(text_info),
              Container(
                height: 20,
              ),
              RaisedButton(
                child: Text("Cerrar esta pantalla"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ]),
          )
        ],
      ),
    );
  }



  Future<void> message1() async {
    print('Esperando...');

    var url = Uri.parse('https://flutter.dev/');
    var response =
    await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    setState(() {
      text_info = '${response.body}';
    });
  }

  Future<void> main_coneccion1() async {
    await message1();
  }

}
