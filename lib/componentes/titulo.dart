import 'package:flutter/material.dart';
import 'package:producto_integrador/componentes/nav_bar_superior.dart';

class TituloPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.infoSerie(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        SafeArea(child: NavBarSuperior()),
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 20.0),
        SizedBox(width: 6.0),
        Text(
          'Catalogo',
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.check, color: Colors.white),
              SizedBox(height: 3.0),
              Text(
                'Mi lista',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.info_outline, color: Colors.white),
              SizedBox(height: 3.0),
              Text(
                'Informacion',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
