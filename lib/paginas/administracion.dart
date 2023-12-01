import 'package:flutter/material.dart';
import 'package:producto_integrador/componentes/admin_pelicula.dart';

class AdministracionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            AdminPelicula(),
            this.listaHorizontal('Titulo:', 'Escribe el titulo'),
            this.listaHorizontal('Fecha:', 'Escribe la fecha'),
            this.listaHorizontal('Director:', 'Escribe el nombre del director'),
            this.listaHorizontal('Sinopsis:', 'Redacta la sinopsis '),
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
