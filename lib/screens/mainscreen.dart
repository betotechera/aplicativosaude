import 'package:flutter/material.dart';
import 'package:healthpayments/models/servicesperformed.dart';
import 'package:healthpayments/store/config.dart';

class MainScreen extends StatelessWidget {
  final double saldoDisponivel = 1200.0;
  final String namePerson = 'Alberto Techera';

  /// => Main screen activated after User Login and that presents the main functions of the application
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Config.colorBackground,
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
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 120,
            width: 340,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                    color: Colors.teal, width: 2.0, style: BorderStyle.solid),
                bottom: BorderSide(
                    color: Colors.teal, width: 2.0, style: BorderStyle.solid),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Cliente : $namePerson ",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                Text(
                  'Saldo :  $saldoDisponivel ',
                  //textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                ListView.builder(itemBuilder: (context, index) {
                  final List<ServicePerformed> servicesPerformed = [
                    ServicePerformed(
                        'Consulta Medica',
                        '1001-4 Consulta Medica',
                        DateTime(2021, 08, 2, 16, 0, 0),
                        '80,0'),
                    ServicePerformed('SADT', '15.01.001-0 Eletrocardiograma',
                        DateTime(2021, 08, 2, 16, 0, 0), '80,0'),
                    ServicePerformed(
                        'Consulta Medica',
                        '1001-4 Consulta Medica',
                        DateTime(2021, 09, 22, 10, 0, 0),
                        '80,0')
                  ];
                  return ServicePerformedItem(servicesPerformed);
                }),
              ],
            ),
          ),
        ));
  }

  _showScreen(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }
}

class ServicePerformedItem extends StatelessWidget {
  final List servicePerformed;

  ServicePerformedItem(
      this.servicePerformed );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
            servicePerformed.serviceType,
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        subtitle: Text(
          servicePerformed.events,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
