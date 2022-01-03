import 'package:flutter/material.dart';
import 'package:healthpayments/data/dummyData.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const users = DUMMY_USERS;
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuarios'),
      ),
      body: ListView.builder(
        itemCount:users.length,
        itemBuilder: null,
      ),
    );
  }
}
