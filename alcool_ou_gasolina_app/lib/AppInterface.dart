// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Interface extends StatefulWidget {
  const Interface({super.key});

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Álcool ou Gasolina",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          // make button take all space in the container
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            Padding(padding: EdgeInsets.only(bottom: 32)),
            Text(
              "Saiba qual a melhor opcão para abastecimento do seu carro",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Padding(padding: EdgeInsets.only(bottom: 32)),
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(label: Text("Preco Álcool, ex: 1.59")),
              style: TextStyle(fontSize: 22),
              controller: _controllerAlcool,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(label: Text("Preco Gasolina, ex: 3.15")),
              style: TextStyle(fontSize: 22),
              controller: _controllerGasolina,
            ),
            Padding(padding: EdgeInsets.only(bottom: 16)),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Calcular",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateColor.resolveWith((states) => Colors.blue),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    padding: MaterialStateProperty.resolveWith(
                        (states) => (EdgeInsets.all(15))))),
          ],
        ),
      ),
    );
  }
}
