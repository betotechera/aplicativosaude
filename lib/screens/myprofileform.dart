import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:healthpayments/components/centered_message.dart';
import 'package:healthpayments/components/progress_wait.dart';

class MyProfileForm extends StatefulWidget {
  /// => Registration form user profile data
  const MyProfileForm({Key? key}) : super(key: key);

  @override
  State<MyProfileForm> createState() => _MyProfileFormState();
}

class _MyProfileFormState extends State<MyProfileForm> {
  //final TextEditingController _userId = Uuid().v4() as TextEditingController;
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _userSurname = TextEditingController();
  final TextEditingController _userEmail = TextEditingController();
  bool _sending = false;
  bool _isValid = true;

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
                    validator: (value) {
                      if (value!.isEmpty) {
                      return 'E-mail deve ser preenchido';
                      }
                      return null;
                    },
                    controller: _userName,
                    style: TextStyle(fontSize: 24.0),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nome',
                      hintText: 'Informe seu nome ',
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                    controller: _userSurname,
                    style: TextStyle(fontSize: 24.0),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Sobrenome',
                        hintText: "Informe seu sobrenome"),
                    keyboardType: TextInputType.name,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                    controller: _userEmail,
                    style: TextStyle(fontSize: 24.0),
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      border: OutlineInputBorder(),
                      hintText: 'Informe seu e-mail',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) =>
                    {
                      setState(() {
                        _isValid = EmailValidator.validate(value);
                      })},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(_isValid ? 'E-mail Válido' : 'Email inválido'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      child: Text('Cadastrar'),
                      onPressed: () {
                        // final double value =
                        // double.tryParse(_valueController.text);
                        // final transactionCreated = Transaction(
                        //   transactionId,
                        //   value,
                        //   widget.contact,
                        // );
                        showDialog(
                            context: context,
                            builder: (contextDialog) {
                              return Text(_isValid
                                  ? 'WIP - E-mail Válido'
                                  : 'WIP - Email inválido');
                              // return TransactionAuthDialog(
                              //   onConfirm: (String password) {
                              //     _save(transactionCreated, password, context);
                              //   },
                              // );
                            });
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),)
      ,
    );
  }
}
