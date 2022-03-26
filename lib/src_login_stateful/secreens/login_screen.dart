// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   return LoginScrenState();
  // }

  LoginScrenState createState() => LoginScrenState();
}

class LoginScrenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  Widget build(context) {
    print('login screen state rendered');
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            SizedBox(height: 20.0),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Adress',
        hintText: 'you@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,
      onSaved: (value) {
        email = value;
      },
      // cursorRadius: Radius.circular(25),
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password', hintText: 'Password'),
      obscureText: true,
      onSaved: (value) {
        password = value;
      },
      validator: validatePassword,
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        // formKey.currentState?.reset();
        // print(formKey.currentState);
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          print('you can submit form to API');
        }
      },
      child: Text('Submit'),
      style: ElevatedButton.styleFrom(primary: Colors.green),
    );
  }
}
