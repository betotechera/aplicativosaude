import 'package:flutter/material.dart';
import 'package:healthpayments/components/navDrawer.dart';
import 'package:healthpayments/screens/usagehistory.dart';
import 'package:healthpayments/screens/credits.dart';
import 'package:healthpayments/screens/menuitem.dart';
import 'package:healthpayments/screens/accreditednetwork.dart';

class MainMenu extends StatelessWidget {
  /// => Main menu activated after User Login and that presents the main functions of the application
  const MainMenu({Key? key}) : super(key: key);
  final double saldoDisponivel = 1210.0;
  final String namePerson = 'Alberto Techera';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Minha Conta'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Cliente : $namePerson ",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.green,
              ),
            ),
            Text(
              'Saldo :  $saldoDisponivel ',
              //textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.green,
              ),
            ),
            Padding(padding: const EdgeInsets.all(8.0)),
            Container(
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
                    onClickItem: () =>
                        _showScreen(context, ShowUsageHistory()),
                    labelItem: 'Atendimentos',
                    iconItem: Icons.health_and_safety_sharp,
                  ),
                  ItemMenu(
                    onClickItem: () => _showScreen(context, ShowAccreditedNetwork()),
                    labelItem: 'Rede Credenciada',
                    iconItem: Icons.person,
                  ),
                  ItemMenu(
                    onClickItem: () => _showScreen(context, ShowCredits()),
                    labelItem: 'Créditos',
                    iconItem: Icons.money,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showScreen(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }
}
