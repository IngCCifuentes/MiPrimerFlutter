import 'package:flutter/material.dart';
import 'package:holamundo/review.dart';
import 'description_place.dart';
class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Review("assets/img/yo.jpg", "Carlos Cifuentes", "2 review . 5 fotos ", "Del verde siempre", 2),
        Review("assets/img/nacional.jpg", "René Higuita", "2 review . 3 fotos ", "El más veces campeón", 2),
        Review("assets/img/camiseta.jpg", "Steven Mora", "1 review . 2 fotos ", "Soy del verde, soy feliz", 3),
      ],
    );
  }

}