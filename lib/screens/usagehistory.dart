import 'package:flutter/material.dart';

class ShowUsageHistory extends StatelessWidget {
  const ShowUsageHistory ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Atendimentos'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Tela de histórico de atendimentos',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
