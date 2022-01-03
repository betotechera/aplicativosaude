import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  /// => Tela inicial de acesso ao aplicativo
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  final formEmail = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  key: formEmail,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'E=mail deve ser preechido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Senha deve ser informada';
                    }
                    else if (value.length < 8) {
                      return 'Senha deve ter mais de pito caracteres';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    formKey.currentState?.validate();
                  },
                  child: Text('Entrar'),
                ),
                TextButton(
                  onPressed: () async {
                    formKey.currentState?.reset();
                    await Future.delayed(Duration(seconds: 1));
                    formEmail.currentState?.validate();
                  },
                  child: Text('Esqueceu a senha ?'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
