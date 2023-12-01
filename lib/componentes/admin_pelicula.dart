import 'package:flutter/material.dart';
import 'package:producto_integrador/componentes/nav_bar_superior.dart';

class AdminPelicula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.network(
          'https://png.pngtree.com/element_our/20190601/ourlarge/pngtree-white-upload-icon-image_1338667.jpg',
          width: 600.0,
          height: 350.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 355.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Colors.black38,
                Colors.black,
              ])),
        ),
        SafeArea(child: NavBarSuperior()),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.backup, color: Colors.green),
              SizedBox(height: 3.0),
              Text(
                'Agregar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.highlight_off, color: Colors.red),
              SizedBox(height: 3.0),
              Text(
                'Eliminar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
