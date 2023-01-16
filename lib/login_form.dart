import 'package:flutter/material.dart';

import 'main_screen.dart';

class LoginForm extends StatefulWidget {
  static const route = '/login';
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  //bool loggedIn = false;
  String name = '';

  final _nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Text('PERSONEL INFORMATION SYSTEM'),
          centerTitle: true,
          toolbarHeight: 70,
          backgroundColor: Colors.green,
        ),
      ),
      body: Center(
        child: _buildLoginForm(context),
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    void validate(context) {
      final form = _formKey.currentState;
      if (!form!.validate()) {
        return;
      }

      final name = _nameController.text;

      Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(username: name)));
    }

    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 70, 50, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                  labelText: 'Name Surname:',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green, width: 1)),
                  errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1))),
              keyboardType: TextInputType.name,
              validator: (text) {
                if (text!.isEmpty) {
                  return 'Enter a name';
                }
                return null;
              },
            ),
            SizedBox(height: 100),
            Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                  label: Text('Login'),
                  onPressed: () {
                    validate(context);
                  },
                  icon: Icon(Icons.arrow_back),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0))),
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
