import 'package:estructura_practica_1/colors.dart';
import 'package:flutter/material.dart';
import 'home/home.dart';

class Registro extends StatefulWidget {
  Registro({Key key}) : super(key: key);

  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        children: <Widget>[
          // Container(
          //   margin: EdgeInsets.only(top: 80, bottom: 60),
          //   child: Image.asset(
          //     'assets/images/cupping.png',
          //     height: 100,
          //   ),
          // ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              'Nombre completo:',
              style: TextStyle(color: white1),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: TextField(
              controller: _nameController,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              'Email:',
              style: TextStyle(color: white1),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: TextField(
              controller: _emailController,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              'Password:',
              style: TextStyle(color: white1),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: TextField(
              obscureText: true,
              controller: _passController,
              decoration: new InputDecoration(
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(color: grey2))),
            ),
          ),
          Container(
            child: RaisedButton(
                color: grey2,
                child: Text('Registrate'),
                onPressed: () async {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home(
                      title: 'Inicio',
                    );
                  }));
                }),
          ),
        ],
      )),
    );
  }
}
