// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Jokenpo",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //text
              Padding(padding: EdgeInsets.fromLTRB(0, 16, 0, 0)),
              Text(
                "Escolha do App",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
              // image
              //text
              // image
            ],
          ),
        ));
  }
}
