import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:healthpayments/screens/mainmenu.dart';
import 'package:healthpayments/store/config.dart';

class LoginForm extends StatefulWidget {
  /// => Initial screen of the application that receives and validates the user's access credentials with the back end through API.

  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();
  final formEmail = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              Image.asset(Config.initialMainImage),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  key: formEmail,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'E-mail deve ser preechido';
                    } else if (EmailValidator.validate(value) == false) {
                      return 'E-mail inválido';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
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
                  keyboardType: TextInputType.number,
//                  controller: _loginPassword,
                  obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Senha deve ser informada';
                    } else if (value.length < 8) {
                      return 'Senha deve ter mais de oito caracteres';
                    }
                    return null;
                  },
                  obscuringCharacter: "*",
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
                    onPressed: () {
                      formKey.currentState?.validate();
                      _checkPassword(context);
                    },
                    child: Text('Entrar'),
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  formKey.currentState?.reset();
                  await Future.delayed(Duration(seconds: 1));
                  formEmail.currentState?.validate();
                },
                child: Text('Esqueceu sua senha ?'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _checkPassword(BuildContext context) {
    if (formKey.currentState!.validate()) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MainMenu()));
    } else {
          final snackBar = SnackBar(
            content:
                Text('Dados de acesso inválidos tente de novo'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);

    }
  }
}
