import 'package:flutter/material.dart';

class Attendance extends StatelessWidget {
  const Attendance ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atendimentos'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Index 2: Atendimento',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
