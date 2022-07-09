import 'package:flutter/material.dart';
import 'package:holamundo/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  String namePlace = "Atl. Nacional";
  String descripcionPlaces =
      "Atlético Nacional es un club de fútbol de la ciudad de Medellín, Colombia."
      " Es considerado uno de los clubes más populares de Colombia y uno de los más representativos de Sudamérica."
      " \n Es el equipo más laureado del fútbol colombiano con 31 títulos oficiales entre campeonatos nacionales e internacionales y por ello se le denomina popularmente como el Rey de Copas. A nivel nacional es el club con más campeonatos ganados en la Primera A con 17";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace(namePlace, descripcionPlaces),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}
