import 'dart:io';

void biblioteca_io(){
/*
  no soporte a flutter web

  Compatibilidad con archivos, sockets, HTTP y otras

  Servidores, línea de comandos,
  Aplicaciones móviles y de escritorio

  Esta biblioteca le permite trabajar
  con archivos, directorios, sockets,
  procesos, servidores y clientes HTTP, y más

*/

  File myFile = File('myFile.txt');
  myFile.rename('yourFile.txt').then((_) => print('file renamed'));

}