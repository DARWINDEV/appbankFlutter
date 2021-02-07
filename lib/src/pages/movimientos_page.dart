import 'package:flutter/material.dart';

import 'package:bbvaapp/src/widgets/tiposOperaciones_widgets.dart';
import 'package:bbvaapp/src/widgets/datosHeader_widget.dart';
import 'package:bbvaapp/src/widgets/header_widget.dart';

class MovimientosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE5F0F6),
        body: Stack(
          children: <Widget>[
            Stack(
              children: [
                Header(
                  DatosHeader(
                      Icons.arrow_back, 'Cuenta *37265', Color(0xff004481)),
                  Colors.white,
                ),
                ModeloTarjeta(),
              ],
            ),
            Operaciones(),
            BottomModal()
          ],
        ));
  }
}

class BottomModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 0.29,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          child: ListaItems(
            controller: scrollController,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
        );
      },
    );
  }
}

class ListaItems extends StatelessWidget {
  final ScrollController controller;
  final List items = [
    "1,600.00",
    "1,600.00",
    "1,899.00",
    "1,899.00",
    "2,000.00",
    "2,000.00",
    
  ];

  ListaItems({this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 30),
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text(
                  'ÚLTIMOS MOVIMIENTOS',
                  style: TextStyle(
                      color: Color(0xff004481),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.search, color: Color(0xffACB4C9)),
              ],
            )),
        Expanded(
          child: ListView.separated(
              physics: BouncingScrollPhysics(),
              controller: this.controller,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) => Card(
                elevation: 0,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC0D4DF).withOpacity(0.29)),
                    borderRadius: BorderRadius.circular(5)

                  ),
                  child: ListTile(
                  title: Row(
                    children: [
                      Text('Su pago en efectivo', style: TextStyle(color: Color(0xff163F76), fontSize: 15, fontWeight: FontWeight.w500)),
                      Spacer(),
                      Text('+ \$ ${items[index]}', style: TextStyle(color: Color(0xff5FBE83), fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Text('Movimiento BBVA', style: TextStyle(color: Color(0xff8294CC), fontSize: 10, fontWeight: FontWeight.w400),),
                      Spacer(),
                      Text('Hoy', style: TextStyle(color: Color(0xff8294CC), fontSize: 10, fontWeight: FontWeight.w400))
                    ],
                  ),
              )
                ),
              ),

              separatorBuilder: (BuildContext context, int index){
                return SizedBox(height: 10);
              }
              // 
              ),
        ),
      ],
    );
  }
}

class ModeloTarjeta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
          top: size.height * .17,
          left: size.height * .018,
          right: size.height * .018),
      width: double.infinity,
      height: size.height * 0.27,
      decoration: BoxDecoration(
          color: Color(0xff004481), borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              children: <Widget>[
                Image.asset('assets/logo-bbva.png', width: 80),
                Spacer(),
                Icon(Icons.more_horiz, color: Color(0xffFFFFFF), size: 30)
              ],
            ),
          ),
          Text(
            '\$20,000.00',
            style: TextStyle(color: Color(0xffFFFFFF), fontSize: 40),
          ),
          SizedBox(height: size.height *0.025),
          Text('Saldo disponible',
              style: TextStyle(color: Color(0xffFFFFFF), fontSize: 12)),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Row(
              children: <Widget>[
                Text('0001ah7297',
                    style: TextStyle(
                        fontSize: 17,
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.normal)),
                Spacer(),
                Image.asset('assets/visa.png', width: 45)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Operaciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SafeArea(
            child: Container(
          height: size.height * 0.36,
        )),
        Container(
          padding: EdgeInsets.only(top: 20),
          margin: EdgeInsets.symmetric(vertical: size.height * 0.04),
          width: double.infinity,
          height: size.height * 0.22,
          color: Color(0xffFFFFFF),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: <Widget>[
                    FlatButton(
                        onPressed: () {},
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.credit_card, size: 20),
                            SizedBox(width: 10),
                            Text(
                              'Detalles de tarjeta',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        )),
                    Spacer(),
                    Text(
                      'Apagar Tarjeta',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 20),
                  children: <Widget>[
                    TiposOperacionesWidgets(
                        color: Color(0xff3767F0),
                        icono: Icons.shop,
                        operacion: 'Pagar servicio'),
                    TiposOperacionesWidgets(
                        color: Color(0xff4CABCE),
                        icono: Icons.swap_horiz,
                        operacion: 'Transferir'),
                    TiposOperacionesWidgets(
                        color: Color(0xff49D17C),
                        icono: Icons.attach_money,
                        operacion: 'Retiro sin Tarjeta'),
                    TiposOperacionesWidgets(
                        color: Color(0xff004481),
                        icono: Icons.more_horiz,
                        operacion: '6 más'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
