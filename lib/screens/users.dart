import 'package:flutter/material.dart';

class ShowUsers extends StatelessWidget {
  const ShowUsers ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Créditos'),),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Tela de Usuários',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
