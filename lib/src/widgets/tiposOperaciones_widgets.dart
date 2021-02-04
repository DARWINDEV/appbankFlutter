import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TiposOperacionesWidgets extends StatelessWidget {
  Color color;
  IconData icono;
  String operacion;

  TiposOperacionesWidgets({
    this.color, 
    this.icono, 
    this.operacion}) {

    color = this.color;
    icono = this.icono; 
    operacion = this.operacion;
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(right: size.width * 0.10),
      child: Column(
        children: <Widget>[
          Stack(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration:
                    BoxDecoration(color: this.color, shape: BoxShape.circle),
              ),

              Positioned(
                bottom: 0,
                left: 0, 
                top: 0,
                right: 0,
                child: Icon(this.icono, color: Color(0xffFFFFFF), size: 35))
            ],
          ),
          SizedBox(height: 6),
          Container(
            child: Text('$operacion', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: Color(0xFF4B637A))),
          )
        ],
      ),
    );
  }
}
