// ignore_for_file: unused_import, prefer_const_constructors, avoid_print, use_key_in_widget_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  @override
  createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 1;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    print('$counter');
    final response = await get(
        Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));
    final imageModel = ImageModel.formJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
            body: ImageList(images),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: fetchImage,
            ),
            appBar: AppBar(title: Text("Let's see some images!"))));
  }
}
