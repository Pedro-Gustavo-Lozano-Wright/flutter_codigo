import 'package:flutter/material.dart';

class Distribucion extends StatefulWidget {
  @override
  _DistribucionState createState() => _DistribucionState();
}

class _DistribucionState extends State<Distribucion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Distribucion")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Expanded(child: ListView(
              children: <Widget>[

                Container(
                  height: 30,
                  width: 300,
                  decoration: BoxDecoration(color: Colors.indigo),
                  alignment: Alignment(0, 0),
                  child: Text(
                    "Primer eje - Columnas",
                    style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),

                Text("\nJuntos empezando"),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.5)),
                    height: 300, width: 80 ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        boxWidget(),
                        boxWidget(),
                        boxWidget(),
                      ],
                    ),
                  ),
                ),
                Text("\nJuntos en el centro"),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5)),
                    height: 300, width: 80 ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        boxWidget(),
                        boxWidget(),
                        boxWidget(),
                      ],
                    ),
                  ),
                ),
                Text("\nJuntos al final"),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.5)),
                    height: 300, width: 80 ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        boxWidget(),
                        boxWidget(),
                        boxWidget(),
                      ],
                    ),
                  ),
                ),
                Text("\nEspaciadores"),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.5)),
                    height: 300, width: 80 ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        boxWidget(),
                        boxWidget(),
                        boxWidget(),
                      ],
                    ),
                  ),
                ),
                Text("\nEspacio entre objetos"),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.5)),
                    height: 300, width: 80 ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        boxWidget(),
                        boxWidget(),
                        boxWidget(),
                      ],
                    ),
                  ),
                ),
                Text("\nEspacio arlrededos"),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.5)),
                    height: 300, width: 80 ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        boxWidget(),
                        boxWidget(),
                        boxWidget(),
                      ],
                    ),
                  ),
                ),

                Container(
                  height: 30,
                  width: 300,
                  decoration: BoxDecoration(color: Colors.indigo),
                  alignment: Alignment(0, 0),
                  child: Text(
                    "Segundo eje - Columnas",
                    style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),

                Text("\nEn el segundo eje flotando"),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.5)),
                    height: 300, width: 80 ,
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        boxWidget(),
                        boxWidget(),
                        boxWidget(),
                      ],
                    ),
                  ),
                ),
                Text("\nEn el segundo eje al empezar"),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.5)),
                    height: 300, width: 80 ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        boxWidget(),
                        boxWidget(),
                        boxWidget(),
                      ],
                    ),
                  ),
                ),
                Text("\nEn el segundo eje al final"),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.5)),
                    height: 300, width: 80 ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        boxWidget(),
                        boxWidget(),
                        boxWidget(),
                      ],
                    ),
                  ),
                ),
                Text("\nEn el segundo eje hasata llenar"),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.5)),
                    height: 300, width: 80 ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        boxWidget(),
                        boxWidget(),
                        boxWidget(),
                      ],
                    ),
                  ),
                ),


                Container(
                  height: 30,
                  width: 300,
                  decoration: BoxDecoration(color: Colors.indigo),
                  alignment: Alignment(0, 0),
                  child: Text(
                    "Primer eje - Filas",
                    style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),

                Text("\nJuntos empezando"),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5)),
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      boxWidget(),
                      boxWidget(),
                      boxWidget(),
                    ],
                  ),
                ),
                Text("\nJuntos en el centro"),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5)),
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      boxWidget(),
                      boxWidget(),
                      boxWidget(),
                    ],
                  ),
                ),
                Text("\nJuntos al final"),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5)),
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      boxWidget(),
                      boxWidget(),
                      boxWidget(),
                    ],
                  ),
                ),
                Text("\nEspaciadores"),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5)),
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      boxWidget(),
                      boxWidget(),
                      boxWidget(),
                    ],
                  ),
                ),
                Text("\nEspacio entre objetos"),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5)),
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      boxWidget(),
                      boxWidget(),
                      boxWidget(),
                    ],
                  ),
                ),
                Text("\nEspacio arlrededos"),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5)),
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      boxWidget(),
                      boxWidget(),
                      boxWidget(),
                    ],
                  ),
                ),

                Container(
                  height: 30,
                  width: 300,
                  decoration: BoxDecoration(color: Colors.indigo),
                  alignment: Alignment(0, 0),
                  child: Text(
                    "Segundo eje - Filas",
                    style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),

                Text("\nEn el segundo eje flotando"),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5)),
                  height: 80,
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      boxWidget(),
                      boxWidget(),
                      boxWidget(),
                    ],
                  ),
                ),
                Text("\nEn el segundo eje al empezar"),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5)),
                  height: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      boxWidget(),
                      boxWidget(),
                      boxWidget(),
                    ],
                  ),
                ),
                Text("\nEn el segundo eje al final"),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5)),
                  height: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      boxWidget(),
                      boxWidget(),
                      boxWidget(),
                    ],
                  ),
                ),
                Text("\nEn el segundo eje hasata llenar"),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5)),
                  height: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      boxWidget(),
                      boxWidget(),
                      boxWidget(),
                    ],
                  ),
                ),

              ],
            ), flex: 1,),

            RaisedButton(
              child: Text("Cerrar esta pantalla"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );;
  }

  boxWidget() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.black, width: 1)),
      child: Center(
          child:
          Text("widget", style: TextStyle(fontSize: 12, color: Colors.white))),
    );
  }

}

