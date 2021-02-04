import 'package:bbvaapp/src/widgets/imagenAvatar_widget.dart';
import 'package:flutter/material.dart';

class DatosHeader extends StatelessWidget {
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
              Icon(Icons.menu_outlined, size: 25, color: Colors.white),
              Spacer(),
              Text('Hola, Eren',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
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
