import 'package:flutter/material.dart';

class ShowAccountBalance extends StatelessWidget {
  const ShowAccountBalance ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saldo'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Tela de Saldos',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
