import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:healthpayments/components/progress_wait.dart';

class MyProfileForm extends StatefulWidget {
  /// => Registration form user profile data
  const MyProfileForm({Key? key}) : super(key: key);

  @override
  State<MyProfileForm> createState() => _MyProfileFormState();
}

class _MyProfileFormState extends State<MyProfileForm> {
  //final  _userId = Uuid().v4() ;
  final formKey = GlobalKey<FormState>();
  final String userEmail = 'beto.techera@gmail.com';
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _userSurname = TextEditingController();
  final TextEditingController _userEmail = TextEditingController();
  bool _sending = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Visibility(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ProgressWait(
                        mensage: 'Carregando...',
                      ),
                    ),
                    visible: _sending,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'E-mail deve ser preenchido';
                        } else if (EmailValidator.validate(value) == false) {
                          return 'E-mail inválido';
                        }
                      },
                      controller: _userEmail,
                      style: TextStyle(fontSize: 16.0),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-mail',
                        helperText: 'Informe seu e-mail pessoal',
                        hintText: 'seuemail@email.com',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: _userName,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Nome deve ser preenchido';
                        } else if (value.length < 3) {
                          return 'Nome deve ter mais de três caracteres';
                        }
                      },
                      style: TextStyle(fontSize: 16.0),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nome',
                        helperText: 'Informe seu nome',
                        hintText: 'Seu Nome',
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Sobrenome deve ser preenchido';
                        } else if (value.length < 3) {
                          return 'Sobrenome deve ter mais de três caracteres';
                        }
                      },
                      controller: _userSurname,
                      style: TextStyle(fontSize: 16.0),
                      decoration: InputDecoration(
                        labelText: 'Sobrenome',
                        border: OutlineInputBorder(),
                        helperText: 'Informe seu sobrenome',
                        hintText: 'Sobrenome',
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        child: Text('Cadastrar'),
                        onPressed: () {
                          _checkProfile(context);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _checkProfile(BuildContext context) {
    if (formKey.currentState!.validate()) {
      final snackBar = SnackBar(
        content: Text('Dados de acesso atualizados'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      final snackBar = SnackBar(
        content: Text('Dados de acesso inválidos tente de novo'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
