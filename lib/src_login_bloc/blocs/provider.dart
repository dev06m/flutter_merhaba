import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();

  Provider({Key? key, required Widget child})
      : super(key: key, child: child); //????

  bool updateShouldNotify(_) => true;

  static Bloc of(context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>()).bloc;
  }
}
