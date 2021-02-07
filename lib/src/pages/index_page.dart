import 'package:bbvaapp/src/widgets/header_widget.dart';
import 'package:flutter/material.dart';

import 'package:bbvaapp/src/widgets/datosHeader_widget.dart';
import 'package:bbvaapp/src/widgets/tiposOperaciones_widgets.dart';
import 'package:flutter/rendering.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5F0F6),
      body: Column(
        children: [
          Stack(
            children: [
              Header(
                DatosHeader(Icons.menu_outlined, 'Hola, Eren', Color(0xffFFFFFF)),
                Color(0xFF004481)
              ),
              DatosCuenta(),
            ],
          ),
          Operaciones(),
          Tarjetas()
        ],
      ),
      bottomNavigationBar: MenuBar(),
    );
  }
}

class Tarjetas extends StatelessWidget {

  final List listaTarjetas = [
  Image.asset('assets/tarjeta_azul.png', width: 160, height: 160),
  Image.asset('assets/tarjeta_gris.png', width: 160, height: 160),
  Image.asset('assets/tarjeta_azul.png', width: 160, height: 160),
  Image.asset('assets/tarjeta_gris.png', width: 160, height: 160),
  Image.asset('assets/tarjeta_azul.png', width: 160, height: 160),
  Image.asset('assets/tarjeta_gris.png', width: 160, height: 160),
];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        width: double.infinity,
        height: size.height * 0.22,
        color: Color(0xffFFFFFF),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 40, top: 20),
              child: Text('Tus tarjetas', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff004481), fontSize: 15))),
            Expanded(
              child: ListView.separated(
                itemCount: listaTarjetas.length,
                physics: BouncingScrollPhysics(),
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20),
                itemBuilder: (BuildContext context, int index){
                  return listaTarjetas[index];
                },
                separatorBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                );
              },
              ),
            ),
          ],
        ));
  }
}

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        itemMenu(context, Icons.home),
        itemMenu(context, Icons.home),
        itemMenu(context, Icons.home),
        itemMenu(context, Icons.home),
      ],
    );
  }

  Container itemMenu(BuildContext context, IconData icono) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(color: Color(0xffFFFFFF)),
      child: Icon(icono),
    );
  }
}

class Operaciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 20),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.04),
      width: double.infinity,
      height: size.height * 0.16,
      color: Color(0xffFFFFFF),
      child: ListView(
        physics: BouncingScrollPhysics(),
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20),
        children: <Widget>[
          TiposOperacionesWidgets(
              color: Color(0xffF7893A),
              icono: Icons.add,
              operacion: 'Oportunidades'),
          TiposOperacionesWidgets(
              color: Color(0xff4CABCE),
              icono: Icons.swap_horiz,
              operacion: 'Transferir'),
          TiposOperacionesWidgets(
              color: Color(0xff49D17C),
              icono: Icons.attach_money,
              operacion: 'Retiro sin Tarjeta'),
          TiposOperacionesWidgets(
              color: Color(0xff735FDA),
              icono: Icons.room_service,
              operacion: 'Pagar Servicio'),
        ],
      ),
    );
  }
}

class DatosCuenta extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: size.height * 0.10),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          height: size.height * 0.28,
          decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(12)),
          child: Column(children: [
            Container(
                width: double.infinity,
                height: 54,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row(children: <Widget>[
                  Text('TUS CUENTAS',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF004481),
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  Icon(
                    Icons.more_horiz,
                    color: Color(0xFF707070).withOpacity(0.29),
                  )
                ])),
            Expanded(
                child: ListView.separated(
              physics: BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  title: Row(
                    children: [
                      Text(
                        '001ah7297',
                        style:
                            TextStyle(color: Color(0xff1873B9), fontSize: 17),
                      ),
                      Spacer(),
                      Text(
                        '\$20,000',
                        style:
                            TextStyle(color: Color(0xff1873B9), fontSize: 17),
                      ),
                      SizedBox(width: 20)
                    ],
                  ),
                  subtitle: Text(
                    '*37265',
                    style: TextStyle(color: Color(0xff839BB1), fontSize: 14),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Color(0xFF707070).withOpacity(0.29)),
                  onTap: () {},
                );
              },
              separatorBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Divider(
                      color: Color(0xffB8CBDC),
                    ));
              },
            ))
          ]),
        ),
      ),
    );
  }
}

