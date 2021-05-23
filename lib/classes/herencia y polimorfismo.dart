import 'dart:math';

class Circle {
  double _radius;
  String _color;

  Circle() {
    this._radius = 1.0;
    this._color = 'red';
  }

  Circle.withRadius(double r) {
    this._radius = r;
    this.color = 'red';
  }

  Circle.withRadiusColor(double r, String c) {
    this._radius = r;
    this._color = c;
  }

  double get radius => this._radius;
  String get color => this._color;
  set radius(double r) => this._radius = r;
  set color(String c) => this._color = c;

  String toString() => 'Circle[radius=$_radius, color=$_color]';
  double area() => double.tryParse((pi * pow(_radius, 2)).toStringAsFixed(2));
}


class Cylinder extends Circle {
  double _height;

  Cylinder() : super() {
    this._height = 1.0;
  }

  Cylinder.withHeight(this._height) : super();

  Cylinder.withHeightRadius(this._height, double r) : super.withRadius(r);

  Cylinder.withHeightRadiusColor(this._height, double r, String c) : super.withRadiusColor(r, c);

  double get height => this._height;
  set height(double h) => this._height = h;

  String toString() => 'Cylinder[base=${super.toString()}, height=$_height]';
  double volume() => double.tryParse((area() * _height).toStringAsFixed(2));

}

void funcion(){

  Cylinder cyl1 = Cylinder();
  print(cyl1);
  Cylinder cyl2 = Cylinder.withHeightRadius(5.0, 2.0);
  print(cyl2);
  print('area: ${cyl2.area()}, volumen: ${cyl2.volume()}');

}