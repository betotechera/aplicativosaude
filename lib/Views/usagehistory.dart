import 'package:flutter/material.dart';
import 'package:healthpayments/models/servicesperformed.dart';

class ShowUsageHistory extends StatelessWidget {
  /// => Lists the history of health care provided by a customer
  //const ShowUsageHistory({Key? key}) : super(key: key);
  final List<ServicePerformed> servicesPerformed = [
    ServicePerformed('Consulta', '1001-4 Consulta Medica',
        DateTime(2021, 08, 2, 16, 0, 0), '80,0'),
    ServicePerformed('SADT', '15.01.001-0 Eletrocardiograma',
        DateTime(2021, 08, 2, 16, 0, 0), '120,0'),
    ServicePerformed('Consulta Medica', '1001-4 Consulta Medica',
        DateTime(2021, 09, 22, 10, 0, 0), '80,0')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Atendimentos'),
      ),
      body: Container(
        child: ListView(
            children: const <Widget>[
              ListTile(
                leading: Icon(Icons.map),
                title: Text('Map'),
                subtitle: Text('servicesPerformed'),
              ),
              ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('Album'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
              ),
            ],
          ),
        )
        // ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemBuilder: (context, index) {

        //       return ServicePerformedItem(servicesPerformed);
        //     }),
    );
  }
}

class ServicePerformedItem extends StatelessWidget {
  /// => Displays service performed items
  final List servicePerformedItem;

  ServicePerformedItem(this.servicePerformedItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text( '$servicePerformedItem',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        subtitle: Text(
          'servicePerformed.events',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
