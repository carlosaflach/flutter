// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "La gente se rie de mi por que soy diferente, yo me rio de ellos por que son todos iguales.",
    "Solo hay una felicidad en la vida – amar y ser amado.",
    "La muerte destroza al hombre: la idea de la muerte le salva.",
    "El placer y la acción hacen que las horas parezcan cortas."
  ];
  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Frases do dia', style: TextStyle()),
        ),
        body: Center(
          child: Container(
            // Define a largura como 100% do espaço em tela.
            padding: EdgeInsets.all(16),
            // decoration: BoxDecoration(
            //     border: Border.all(width: 3, color: Colors.amber)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/logo.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
                ),
                ElevatedButton(
                  onPressed: _gerarFrase,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.green)),
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
