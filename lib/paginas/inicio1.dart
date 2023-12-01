import 'package:flutter/material.dart';
import 'package:producto_integrador/componentes/carte_principal.dart';

class InicioHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            CartelPrincipal(),
            this.listaHorizontal(
                'Bienvenido a tu app de películas favorita', 22.0),
            this.listaHorizontal(
                'Si ya eres usuario, checa las opciones que tenemos para ti en la barra de navegación.',
                10.0),
            this.listaHorizontal(
                'Si aun no te registras presiona el enlace “registro” ubicado en la esquina superior derecha de tu dispositivo.',
                10.0)
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

  Widget listaHorizontal(String titulo, double cantidad) {
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
              fontSize: cantidad,
            ),
          ),
        ),
      ],
    );
  }
}
