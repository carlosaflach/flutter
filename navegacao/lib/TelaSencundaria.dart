import 'package:flutter/material.dart';

class TelaSencundaria extends StatefulWidget {
  const TelaSencundaria({super.key});

  @override
  State<TelaSencundaria> createState() => _TelaSencundariaState();
}

class _TelaSencundariaState extends State<TelaSencundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Secundária'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [Text('Segunda Tela')],
        ),
      ),
    );
  }
}
