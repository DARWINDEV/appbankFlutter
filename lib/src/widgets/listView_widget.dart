import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListViewWidget extends StatelessWidget {

  Widget contenido;

  ListViewWidget({this.contenido}){
    contenido = this.contenido;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: BouncingScrollPhysics(),
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20),
        children: <Widget>[
          contenido
        ],
      );
  }
}