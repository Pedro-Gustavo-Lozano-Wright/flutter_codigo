import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercodigo/contador_cubit/counter/view/counter_page.dart';
import 'package:fluttercodigo/contador_cubit/counter_observer.dart';
import 'package:fluttercodigo/dart_code/isolet.dart';
import 'package:fluttercodigo/sqflite/screen_ui.dart';
import 'package:fluttercodigo/widgets/dialogos.dart';
import 'package:fluttercodigo/widgets/distribucion.dart';
import 'package:fluttercodigo/widgets/gestos_en_pantalla.dart';
import 'package:fluttercodigo/widgets/imagen.dart';
import 'package:fluttercodigo/widgets/preferences.dart';
import 'dart_code/web_conexion_rest_api.dart';

import 'Contador_BLoC/Screen_BLoC.dart';

import 'package:bloc/bloc.dart';

import 'classes/clase_json_map_objeto.dart';
import 'classes/herencia y polimorfismo.dart';
import 'dart_code/crear_archivo_interno.dart';

import 'package:http/http.dart' as http;

import 'dart_code/http_request_JSON.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Codigo',
      theme: ThemeData(
          primaryColor: Colors.indigo,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: MyHomePage(title: 'Flutter Codigo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: ListView(children: <Widget>[
                  ElevatedButton(
                    child: Text("Imagen"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Imagen(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text("SQflite"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Persistencia(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text("Preferences"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Preferences(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text("Dialogos"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Dialogos(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text("Distribucion"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Distribucion(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text("BLoC contador"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen_BLoC(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text("cubit contador"),
                    onPressed: () {
                      Bloc.observer = CounterObserver();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CounterPage(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text("API REST"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => web_conexion(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text("gestos"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => gestos_en_pantalla(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text("crear y guardar arcivos"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FlutterDemo(storage: CounterStorage()),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text("Page_isolate"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page_isolate(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text("http request JSON"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => http_request_json(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text("x"),
                    onPressed: () {
                      print("");
                      print("");
                    },
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }




}


// añadir permisos en el AndroidManifest.xml que esta en la carpeta res o afuera de ella     <uses-permission android:name="android.permission.INTERNET"/>
// cambiar el "minSdkVersion 16" a 21 o 23 en build.gradle  21 = android 5.  23 = android 6
// añadir referencia a archvo nuevo y paquetes en pubspec.yaml

//  path_provider: ^1.5.1 #  path_provider: ^2.0.1
//  sqflite: ^1.3.0

/*
  generic_bloc_provider: ^1.1.0
  sqflite: ^1.3.0
  #path_provider: ^2.0.1
  path_provider: ^1.5.1

  #   flutter_tts: ^1.0.0
  #   url_launcher: ^5.5.3
  #   flutter_tts_improved: ^1.0.3
  #   flutter_local_notifications: ^1.4.0
  shared_preferences: ^0.5.6+3
  #   carousel_slider: ^1.4.0
  #   google_fonts: ^0.3.10
  #   webview_flutter: ^0.3.22+1
  rxdart: ^0.27.0
  http: ^0.12.0+2
  flutter_isolate: ^2.0.0
*/

// errores
// https://github.com/flutter/flutter-intellij/issues/2307
//https://stackoverflow.com/questions/57000043/error-entrypoint-isnt-within-the-current-project#:~:text=If%20your%20ios%2C%20android%2C%20or,you%20can%20display%20the%20hidden%20.
//https://stackoverflow.com/questions/48650831/dart-sdk-is-not-configured


/*
Turn off Null Safety

pubspec.yam
environment:
  sdk: ">=2.11.0 <3.0.0"
//// @dart=2.9
https://stackoverflow.com/questions/65302065/turn-off-null-safety-for-previous-flutter-project
*/





