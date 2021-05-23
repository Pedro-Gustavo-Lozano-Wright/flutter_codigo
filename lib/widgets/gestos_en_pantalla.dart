import 'package:flutter/material.dart';

class gestos_en_pantalla extends StatefulWidget {
  @override
  _gestos_en_pantallaState createState() => _gestos_en_pantallaState();
}

class _gestos_en_pantallaState extends State<gestos_en_pantalla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gestos_en_pantalla"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {print("onTap");},
          onLongPress: () {print("onLongPress");},
          onDoubleTap: () {print("onLongPress");},

          onVerticalDragDown: (DragDownDetails details) {print("↕ tap inicial global ${details.localPosition}");},
          onVerticalDragStart: (DragStartDetails details) {print("↕ Start ${details.localPosition}");},
          onVerticalDragUpdate: (DragUpdateDetails details) {print("↕ Update ${details.localPosition}");},
          onVerticalDragEnd: (DragEndDetails details) {print("↕ End ${details.velocity}");},

          onHorizontalDragDown: (DragDownDetails details) {print("↔ tap inicial local ${details.localPosition}");},
          onHorizontalDragStart: (DragStartDetails details) {print("↔ Start ${details.localPosition}");},
          onHorizontalDragUpdate: (DragUpdateDetails details) {print("↔ Update ${details.localPosition.distance}");},
          onHorizontalDragEnd: (DragEndDetails details) {print("↔ End ${details.velocity}");},

          onLongPressEnd: (LongPressEndDetails details) {print("onLongPressEnd ${details}");},
          onLongPressStart: (LongPressStartDetails details) {print("onLongPressStart ${details}");},
          onLongPressMoveUpdate: (LongPressMoveUpdateDetails details) {print("onLongPressMoveUpdate ${details}");},

          child: Container(
            height: 300,
            width: 300,
            color: Colors.indigo,
            child: Center(child: Text('Gestos')),
          ),
        ),
      ),
    );
  }


}