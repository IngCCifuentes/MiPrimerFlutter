import 'package:flutter/material.dart';
import 'button_purple.dart';
import 'home_trips.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace = "Atl. Nacional";
  String descripcionPlaces =
      "Atlético Nacional es un club de fútbol de la ciudad de Medellín, Colombia."
      " Es considerado uno de los clubes más populares de Colombia y uno de los más representativos de Sudamérica."
      " \n Es el equipo más laureado del fútbol colombiano con 31 títulos oficiales entre campeonatos nacionales e internacionales y por ello se le denomina popularmente como el Rey de Copas. A nivel nacional es el club con más campeonatos ganados en la Primera A con 17";

  DescriptionPlace(namePlace, descripcionPlaces);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star_half = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final descripcion = Container(
      margin: new EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
      child: Text(
        descripcionPlaces,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );

    final titulo_nacional = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 00.0),
          child: Text(
            namePlace,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                color: Colors.green,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star_half, star_border],
        )
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[titulo_nacional, descripcion, ButtonPurple("Navegar")],
    );
  }
}
