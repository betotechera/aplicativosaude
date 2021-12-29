import 'package:flutter/material.dart';
import 'package:healthpayments/screens/carouselfullimage.dart';
import 'package:healthpayments/screens/myprofileform.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Minha Saúde',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/good_health_2.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Bem vindo'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Meu Perfil'),
            onTap: () => {Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyProfileForm()))},
          ),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('Pagamentos'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () => {Navigator.of(context).push(MaterialPageRoute(builder: (context) => CarouselFullImage()))},
          ),
        ],
      ),
    );
  }
}