import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _gerarFrase() {
    setState(() {
      int inteiro = Random().nextInt(5);
      _frase = _frases[inteiro];
      print("Numero Soteado: $inteiro");
    });
  }

  List<String> _frases = ["Jose", "Ernesto", "Dos", "Santos", "Moraes"];
  String _frase = "Frase Qualquer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Frases do Dia"),
      ),
      body: Center(
        child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("images/logo.png"),
                Text(
                  _frase,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                ElevatedButton(
                    onPressed: _gerarFrase,
                    child: Text(
                      "Nova frase",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}
