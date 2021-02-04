import 'package:flutter/material.dart';

import 'package:bbvaapp/src/widgets/imagenAvatar_widget.dart';
import 'package:bbvaapp/src/widgets/operaciones_widgets.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[Header(),
       IconoUsuario(),
       SizedBox(height: 25),
       Nombre(),
       SizedBox(height: 20),
       InputPassword(),
       SizedBox(height: 25 ),
       Operaciones()
      
      ],
    ));
  }
}

class Operaciones extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          OperacionesWidgets(icono: Icons.do_not_disturb_alt, tituloOperacion: 'Token móvil', color: Color(0xFF004481)),
          SizedBox(height: 20),
          OperacionesWidgets(icono: Icons.qr_code_scanner, tituloOperacion: 'Operación QR + CoDi', color: Color(0xFF004481)),
          SizedBox(height: 20),
          OperacionesWidgets(icono: Icons.local_phone, tituloOperacion: 'Línea BBVA', color: Color(0xFF004481)),
        ],
      )
    );
  }
}

class InputPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Input(),
      SizedBox(height: 10),
      Container(
        child: FlatButton(
          onPressed: (){}, 
          child: Text('Olvidé mi contraseña', style: TextStyle(color:  Color(0xFF004481), fontWeight: FontWeight.w300, fontSize: 15))),
      )
    ]);
  }
}

class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Contraseña',
          suffixIcon: Icon(Icons.visibility),
          
        ),
      ),
    );
  }
}

class IconoUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Perfil(),
    );
  }
}

class Perfil extends StatelessWidget {

  Color colorAzul = Color(0xFF004481);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30),
      child: Row(children: <Widget>[
        ImagenUsuario(),
        SizedBox(width: 25),
        IconoCambiar(),
        
      ]),
    );
  }
}

class Nombre extends StatelessWidget {

  Color colorAzul = Color(0xFF004481);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Hola, Eren', style: TextStyle(color: colorAzul, fontSize: 30, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text('¿Qué tal tu día hoy?', style: TextStyle(color: Color(0xFF889FB4), fontSize: 15)),
          
        ]),
    );
  }
}

class IconoCambiar extends StatelessWidget {

  Color colorAzul = Color(0xFF004481);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
          elevation: 0,
          backgroundColor: colorAzul,
          child: Icon(Icons.compare_arrows_sharp),
          onPressed: () {}),
    );
  }
}



class Header extends StatelessWidget {
  Color colorAzul = Color(0xFF004481);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: SafeArea(
        child: Row(children: <Widget>[
          Icon(
            Icons.menu_outlined,
            color: colorAzul,
            size: 40,
          ),
          SizedBox(width: 80),
          Image.asset('assets/bbva.png', width: 100, height: 100),
        ]),
      ),
    );
  }
}
