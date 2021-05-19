import 'package:flutter/material.dart';


class Imagen extends StatefulWidget {
  @override
  _ImagenState createState() => _ImagenState();
}

class _ImagenState extends State<Imagen> {

  String text_imagen = "flutter_icono.png";
  Image imagen_png = Image.network("https://controlla.com.mx/img/Imagenes/logo_controllablanco_ajustado.png");
  bool memoria_imagen = false;

  double boxHeight = 300;
  double boxWidth = 300;
  BoxFit fit = BoxFit.fill;

  @override
  Widget build(BuildContext context) {


    void _actualizar_image(){
      if (memoria_imagen){
        imagen_png = Image.asset(
          "assets/flutter_icono.png",
          fit: fit,
          width: boxWidth,
          height: boxHeight,
        );
      }else{
        imagen_png = Image.network(
          "https://controlla.com.mx/img/Imagenes/logo_controllablanco_ajustado.png",
          fit: fit,
          width: boxWidth,
          height: boxHeight,
        );
      }
    }


    return Scaffold(
      appBar: AppBar(title: Text("Imagen")),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 1,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 30,
                        width: 300,
                        decoration: BoxDecoration(color: Colors.indigo),
                        alignment: Alignment(0, 0),
                        child: Text(
                          "Imagen",
                          style:
                          TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),

                      Text("\n    " + text_imagen + "\n"),

                      Transform.translate(offset: const Offset(20,0),
                      child: Center(
                        child: Container(
                            height: 300,
                            width: 300,
                            alignment: Alignment(0, 0),
                            child: Container(
                              color: Colors.black,
                              child: OutlineButton(
                                onPressed: (){
                                  setState(() {
                                    if (memoria_imagen){
                                      imagen_png = Image.network(
                                        "https://controlla.com.mx/img/Imagenes/logo_controllablanco_ajustado.png",
                                        fit: fit,
                                        width: boxWidth,
                                        height: boxHeight,
                                      );
                                      text_imagen = "https://controlla.com.mx ... ajustado.png";
                                      memoria_imagen = false;
                                    }else{
                                      imagen_png = Image.asset(
                                        "assets/flutter_icono.png",
                                        fit: fit,
                                        width: boxWidth,
                                        height: boxHeight,
                                      );
                                      text_imagen = "assets/flutter_icono.png";
                                      memoria_imagen = true;
                                    }
                                  });
                                },
                                child: Container(
                                    child: imagen_png
                                ),
                              ),
                            )
                        ),
                      ),),

                      Container(width: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: <Widget>[
                              Text("Width:"),
                              Expanded(flex: 1,
                                child: Slider(
                                  value: boxWidth,
                                  min: 50,
                                  max: 300,
                                  divisions: 25,
                                  onChanged: (value) {
                                    setState(() {
                                      boxWidth = value;
                                      _actualizar_image();
                                    });
                                  },
                                ),
                              ),
                              Text(boxWidth.toInt().toString())
                            ],
                          ),
                        ),
                      ),
                      Container(
                          width: 300,
                          child: Transform.rotate(angle: 0,
                            child: Transform.translate(offset: const Offset(0,0),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container( height: 35,
                                  child: Row(
                                    children: <Widget>[
                                      Text("Hight:"),
                                      Expanded(child: Slider(
                                        value: boxHeight,
                                        min: 50,
                                        max: 300,
                                        divisions: 25,
                                        onChanged: (value) {
                                          setState(() {
                                            boxHeight = value;
                                            _actualizar_image();
                                          });
                                        },
                                      ), flex: 1,),

                                      Text(boxHeight.toInt().toString())
                                    ],
                                  ),
                                ),
                              ),
                            ),)),
                      Center(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: <Widget>[
                                PopupMenuButton<BoxFit>(
                                  onSelected: (BoxFit result) {
                                    print(result);
                                    setState(() {
                                      fit = result;
                                      _actualizar_image();
                                    });
                                  },
                                  child: Container(
                                    width: 150,
                                    padding: const EdgeInsets.all(5),
                                    decoration:
                                    BoxDecoration(border: Border.all(color: Colors.grey)),
                                    child: Text(fit.toString()),
                                  ),
                                  itemBuilder: (BuildContext context) =>
                                  <PopupMenuEntry<BoxFit>>[
                                    const PopupMenuItem<BoxFit>(
                                      value: BoxFit.contain,
                                      child: Text('BoxFit.contain'),
                                    ),
                                    const PopupMenuItem<BoxFit>(
                                      value: BoxFit.cover,
                                      child: Text('BoxFit.cover'),
                                    ),
                                    const PopupMenuItem<BoxFit>(
                                      value: BoxFit.fill,
                                      child: Text('BoxFit.fill'),
                                    ),
                                    const PopupMenuItem<BoxFit>(
                                      value: BoxFit.fitHeight,
                                      child: Text('BoxFit.fitHeight'),
                                    ),
                                    const PopupMenuItem<BoxFit>(
                                      value: BoxFit.fitWidth,
                                      child: Text('BoxFit.fitWidth'),
                                    ),
                                    const PopupMenuItem<BoxFit>(
                                      value: BoxFit.none,
                                      child: Text('BoxFit.none'),
                                    ),
                                    const PopupMenuItem<BoxFit>(
                                      value: BoxFit.scaleDown,
                                      child: Text('BoxFit.scaleDown'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                ),

                RaisedButton(
                  child: Text("Cerrar esta pantalla"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}




