import 'package:flutter/material.dart';
import 'package:healthpayments/screens/accountbalance.dart';
import 'package:healthpayments/screens/credits.dart';
import 'package:healthpayments/screens/item_menu.dart';
import 'package:healthpayments/screens/users.dart';

class MainScreen extends StatelessWidget {
  /// => Main screen activated after User Login and that presents the main functions of the application
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Conta'),
        leading: const IconButton(
          color: Colors.white,
          onPressed: null,
          icon: Icon(Icons.menu),
          tooltip: 'Navigation Menu',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                  color: Colors.grey, width: 2.0, style: BorderStyle.solid),
              bottom: BorderSide(
                  color: Colors.grey, width: 2.0, style: BorderStyle.solid),
            ),
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ItemMenu(
                onClickItem: () => _showScreen(context, ShowAccountBalance()),
                labelItem: 'Saldo',
                iconItem: Icons.monetization_on,
              ),
              ItemMenu(
                onClickItem: () => _showScreen(context,ShowUsers() ),
                labelItem: 'Usuários',
                iconItem: Icons.person,
              ),
              ItemMenu(
                onClickItem: () => _showScreen(context,ShowCredits()),
                labelItem: 'Créditos',
                iconItem: Icons.money,
              ),
            ],
          ),
        ),
      ),
    );
  }


  _showScreen(BuildContext context, Widget widget ) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }
}
