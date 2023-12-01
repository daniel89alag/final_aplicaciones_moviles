import 'package:flutter/material.dart';
import 'package:producto_integrador/componentes/info_pelicula.dart';

class DescripcionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            InfoPelicula(),
            this.listaHorizontal(
                'Titulo:', 'Marvels Captain America: Civil War'),
            this.listaHorizontal('Fecha:', '28 de abril de 2016 (México)'),
            this.listaHorizontal('Director:', 'Anthony Russo'),
            this.listaHorizontal('Sinopsis:', ''),
            SizedBox(width: 6.0),
            Text(
              'Después de que otro incidente internacional, en el que se ven envueltos los Vengadores, produzca daños colaterales, la presión política obliga a poner en marcha un sistema para depurar responsabilidades.',
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
        bottomNavigationBar: this.navInferior());
  }

  BottomNavigationBar navInferior() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: 'Inicio',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.list),
          label: 'Catalogo',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.perm_identity),
          label: 'Usuario',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.logout),
          label: 'Salir',
          backgroundColor: Colors.white,
        ),
      ],
    );
  }

  Widget listaHorizontal(String item, String descripcion) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 10.0),
        SizedBox(width: 6.0),
        Text(
          item,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        SizedBox(width: 6.0),
        Text(
          descripcion,
          style: TextStyle(
              color: Colors.white54,
              fontSize: 15.0,
              fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
