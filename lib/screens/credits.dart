import 'package:flutter/material.dart';

class ShowCredits extends StatelessWidget {
  const ShowCredits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Créditos'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Tela de Créditos',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
