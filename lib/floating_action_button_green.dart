import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

  }
  class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  bool state = false;

  void showSnackBar() {
    String action;
    state ? action = 'Agregado foto a' : action = 'Eliminado foto de';


    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$action tus favoritos'),
      ),
    );
  }
  void onPressedFavo(){
    setState((){
      state ? state = false : state = true;
    });
    showSnackBar();

  }
  @override
  Widget build(BuildContext context){
    // TODO: implement createState
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA52),
      mini: true,
      tooltip: "Favorito",
      onPressed: onPressedFavo,
      child: Icon(state ? Icons.favorite : Icons.favorite_border),
      );
    }

  }