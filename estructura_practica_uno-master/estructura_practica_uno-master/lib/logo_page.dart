import 'package:estructura_practica_1/colors.dart';
import 'package:estructura_practica_1/inicio.dart';
import 'package:flutter/material.dart';

class LogoPage extends StatefulWidget {
  @override
  _LogoPageState createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    super.initState();
    _go();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue1,
    );
  }

  Future<bool> _go() async {
    await Future.delayed(
      const Duration(seconds: 3),
      _openInicio,
    );
    return true;
  }

  void _openInicio() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return Inicio();
    }));
  }
}
