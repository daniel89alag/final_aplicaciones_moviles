import 'package:flutter/material.dart';
import 'package:producto_integrador/componentes/titulo.dart';
import 'package:producto_integrador/componentes/item_img.dart';

class CatalogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            TituloPrincipal(),
            this.listaHorizontal('Drama', ItemImg1(), 10),
            this.listaHorizontal('Comedia', ItemImg2(), 10),
            this.listaHorizontal('Terror', ItemImg3(), 10),
            this.listaHorizontal('Aventura', ItemImg4(), 10),
            this.listaHorizontal('Ciencia ficcion', ItemImg5(), 10),
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

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        ),
      ],
    );
  }
}
