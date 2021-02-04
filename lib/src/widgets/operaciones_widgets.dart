import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OperacionesWidgets extends StatelessWidget {

 IconData icono;
 String tituloOperacion;
 Color color;

OperacionesWidgets({this.icono, this.tituloOperacion, this.color}){
  icono = this.icono;
  tituloOperacion = this.tituloOperacion;
  color = this.color;
}
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(icono, size: 35, color: Color(0xFF1873B9)),
          SizedBox(width: 20),
          Text(tituloOperacion, style: TextStyle(fontSize: 15, color: color),)
        ],
      ),
    );
  }
}