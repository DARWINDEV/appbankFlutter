import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Header extends StatelessWidget {

  Color color;
  Widget widget;

  Header(this.widget, this.color){
    color = this.color;
    widget = this.widget;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.30,
          color: color,
        ),
        widget
      ],
    );
  }
}
