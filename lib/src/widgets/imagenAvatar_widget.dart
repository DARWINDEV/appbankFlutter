import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImagenUsuario extends StatelessWidget {

  double width;
  double height;

  ImagenUsuario( {this.width, this.height}){
     width = this.width;
     height = this.height;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/eren.jpg'))),
    );
  }
}