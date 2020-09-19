import 'package:estructura_practica_1/login.dart';
import 'package:estructura_practica_1/registro.dart';
import 'package:flutter/material.dart';
import 'package:estructura_practica_1/colors.dart';

class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue1,
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        children: <Widget>[
          // Container(
          //   margin: EdgeInsets.only(top: 80, bottom: 60),
          //   child: Image.asset(
          //     'assets/images/cupping.png',
          //     height: 50,
          //   ),
          // ),
          Container(
            height: 50,
            child: RaisedButton(
                color: grey2,
                child: Text('Registrate'),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Registro();
                  }));
                }),
          ),
          Container(
            child: RaisedButton(
                color: grey2,
                child: Text('Ingresa'),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Login();
                  }));
                }),
          )
        ],
      )),
    );
  }
}
