import 'package:producto_integrador/paginas/administracion.dart';
import 'package:producto_integrador/paginas/catalogo.dart';
import 'package:producto_integrador/paginas/descripcion.dart';
import 'package:producto_integrador/paginas/inicio1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InicioHome(),
    );
  }
}
