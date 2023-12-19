// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_this, prefer_final_fields

import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imageApp = AssetImage("images/padrao.png");
  String _mensagem = "Escolha uma opção abaixo";

  void _opcaoSelecionada(String userChoice) {
    List<String> options = ["pedra", "papel", "tesoura"];
    int randomNumber = Random().nextInt(options.length);
    var appChoice = options[randomNumber];
    setState(() {
      _imageApp = AssetImage("images/$appChoice.png");
    });
    _checkWhoWins(appChoice, userChoice);
  }

  void _checkWhoWins(appChoice, userChoice) {
    if (userChoice == "pedra" && appChoice == "tesoura" ||
        userChoice == "papel" && appChoice == "pedra" ||
        userChoice == "tesoura" && appChoice == "papel") {
      setState(() {
        _mensagem = "Parabéns!! Você venceu =)";
      });
    } else if (appChoice == "pedra" && userChoice == "tesoura" ||
        appChoice == "papel" && userChoice == "pedra" ||
        appChoice == "tesoura" && userChoice == "papel") {
      _mensagem = "Você perdeu=((";
    } else {
      _mensagem = "Empatamos ;)";
    }
  }

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
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: Text(
                  "Escolha do App",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Image(
                image: this._imageApp,
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 16, 0, 0)),
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: Text(
                  _mensagem,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 16, 0, 0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => _opcaoSelecionada("pedra"),
                    child: Image.asset(
                      "images/pedra.png",
                      height: 95,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _opcaoSelecionada("papel"),
                    child: Image.asset("images/papel.png", height: 95),
                  ),
                  GestureDetector(
                    onTap: () => _opcaoSelecionada("tesoura"),
                    child: Image.asset("images/tesoura.png", height: 95),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
