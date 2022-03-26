// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }
}

buildImage(image) {
  return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(
        20.0,
      ), // this is a widget that you want to have displayed inside of whatever you re trying to create
      child: Column(
        children: <Widget>[
          Padding(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(image.url),
            ),
            padding: EdgeInsets.only(bottom: 8.0),
          ),
          Text(image.title),
        ],
      ));
}
