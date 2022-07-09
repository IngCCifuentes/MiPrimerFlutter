import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  String buttonText = "Navegar";

  ButtonPurple(this.buttonText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
      height: 50.0,
      width: 180.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
            colors: [Colors.lightGreen, Colors.green],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp),
      ),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Navegando"),
            ),
          );
        },
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 18.0, fontFamily: "Lato", color: Colors.white),
          ),
        ),
      ),
    );
  }
}
