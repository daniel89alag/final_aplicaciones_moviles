import 'package:flutter/material.dart';

class ItemImg1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.network(
          'https://moviepostermexico.com/cdn/shop/products/captain_america_civil_war_ver2_xxlg_530x@2x.jpg?v=1571841588',
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}

class ItemImg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.network(
          'https://image.tmdb.org/t/p/original/poUK5Gg7IkPokaBTjadzjPfJgKw.jpg',
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}

class ItemImg3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.network(
          'https://play-lh.googleusercontent.com/jJGgXZpVy3uUTbaoYKKuKsa8x5cWhBd7SObYcEXqt01ZnJHj9GJBrpEjSJWbAFHy1xaKkaIYssJBkkY_8g=w240-h480-rw',
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}

class ItemImg4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.network(
          'https://i0.wp.com/plexmx.info/wp-content/uploads/2019/10/EILseYNUEAA15TA.jpg-large.jpg?ssl=1',
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}

class ItemImg5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.network(
          'https://moviepostermexico.com/cdn/shop/products/blade_runner_twenty_forty_nine_ver4_xxlg_1024x1024@2x.jpg?v=1615387691',
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}
