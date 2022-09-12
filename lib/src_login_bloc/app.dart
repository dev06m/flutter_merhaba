// ignore_for_file: prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';
import 'package:pics/src_login_bloc/blocs/provider.dart';
import 'package:pics/src_login_bloc/screens/login_screen.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(context) {
    return Provider(
      child: MaterialApp(
        title: 'Log me IN',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
