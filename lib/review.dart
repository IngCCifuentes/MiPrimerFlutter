import 'package:flutter/material.dart';
import 'description_place.dart';
class Review extends StatelessWidget{

  String pathImage = "assets/img/yo.jpg";
  String name = "Carlos Cifuentes";
  String details = "1 review 5 photos";
  String comment = "Soy del verde, Soy Feliz";
  int star1 = 2;
  Review(this.pathImage, this.name, this.details, this.comment, this.star1);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final usercomment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontWeight: FontWeight.w900,
            fontSize: 13.0

        ),

      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            color: Colors.black54,
            fontSize: 13.0

        ),

      ),
    );

    final username = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0

        ),

      ),
    );
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        username,
        userInfo,
        usercomment

      ],
    );

    final foto = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage)
        )
      ),

    );
    final star1 = Container(
      margin: EdgeInsets.only(
          top: 9.0,
          left: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    return Row(
      children: <Widget>[
        foto,
        userDetails,
        star1,
        star1,
        star1

      ],
    );
  }

}