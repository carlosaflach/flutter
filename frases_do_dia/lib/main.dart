// ignore_for_file: prefer_const_constructors

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Frases do dia', style: TextStyle()),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
