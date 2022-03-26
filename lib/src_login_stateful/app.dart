// ignore_for_file: prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';
import 'package:pics/src_login_stateful/secreens/login_screen.dart';

class App extends StatelessWidget {
  const App() : super();

  Widget build(context) {
    return MaterialApp(
        title: 'Log me IN',
        home: Scaffold(
          body: LoginScreen(),
        ));
  }
}
