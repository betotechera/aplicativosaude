import 'package:flutter/material.dart';
import 'package:healthpayments/screens/mainscreen.dart';
import 'package:healthpayments/store/config.dart';

class LoginForm extends StatefulWidget {
  /// => Initial screen of the application that receives and validates the user's access credentials with the back end through API.

  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _loginEmail = TextEditingController();
  final TextEditingController _loginPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Image.asset(Config.initialMainImage),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _loginEmail,
                keyboardType: TextInputType.emailAddress,
                validator: (String? value) {
                  if (value != null && value.contains('@'))
                    return 'Do not use the @ char.';
                },
                style: TextStyle(
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  labelText: 'Usuário',
                  hintText: 'Informe seu e-mail de acesso',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (String? checkpass) {
                  if (checkpass!.isEmpty) {
                    return "Pasaword deve ser preenchida";
                  }
                },
                keyboardType: TextInputType.number,
                controller: _loginPassword,
                obscureText: true,
                obscuringCharacter: "#",
                style: TextStyle(
                  fontSize: 16.0,
                ),
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  labelText: 'Senha ',
                  hintText: 'Informe sua senha',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Config.colorTheme, // background
                    onPrimary: Colors.white, // foreground)
                  ),
                  onPressed: () async {
                    try {
                      _validaSenha(context);
                      final onLogin = SnackBar(
                        content: Text('Login autorizado'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(onLogin);
                    } catch (error) {
                      final snackBar = SnackBar(
                        content:
                        Text('Dados de acesso inválidos tente de novo'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  }, //=> MainScreen(),
                  child: Text('Entrar'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _validaSenha(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MainScreen()));
  }
}
