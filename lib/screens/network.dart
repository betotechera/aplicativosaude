import 'package:flutter/material.dart';

class NetWork extends StatelessWidget {
  const NetWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rede Credenciada'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Index 1: Rede Credenciada',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
