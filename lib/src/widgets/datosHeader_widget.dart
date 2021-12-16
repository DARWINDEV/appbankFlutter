import 'package:bbvaapp/src/widgets/imagenAvatar_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DatosHeader extends StatelessWidget {

  IconData icono;
  String encabezado;
  Color color;

  DatosHeader(this.icono, this.encabezado,this.color ){
    icono = this.icono;
    encabezado = this.encabezado;
    color = this.color;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          width: double.infinity,
          height: 80,
          // color: Colors.red,
          child: Row(
            children: <Widget>[
              Icon(icono, size: 25, color: color),
              Spacer(),
              Text(encabezado,
                  style: TextStyle(
                      fontSize: 20,
                      color: color,
                      fontWeight: FontWeight.bold)),
              Spacer(),
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: ImagenUsuario(
                  width: 25.0,
                  height: 25.0,
                ),
              ),
            ],
          )),
    );
  }
}
