import 'package:flutter/material.dart';

class ShowAccreditedNetwork extends StatelessWidget {
  /// => Allows consultation of the accredited health network
  const ShowAccreditedNetwork ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Credenciados'),),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Tela de consulta rede credenciada',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
