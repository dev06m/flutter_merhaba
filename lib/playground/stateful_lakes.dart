// import 'dart:html';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteLakeWidget extends StatefulWidget {
  const FavoriteLakeWidget({Key? key}) : super(key: key);

  _FavoriteLakeWidget createState() => _FavoriteLakeWidget();
}

class _FavoriteLakeWidget extends State<FavoriteLakeWidget> {
  bool _isFavorite = true;
  int _favoriteCount = 42;

  Widget build(BuildContext context) {
    _changeButton() {
      setState(() {
        if (_isFavorite) {
          _favoriteCount -= 1;
          _isFavorite = false;
        } else {
          _favoriteCount += 1;
          _isFavorite = true;
        }
      });
    }

    Widget titleSection = Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Oeschinen Lake Campground ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: 'Kandersteg, Switzerland ',
                    style: TextStyle(
                        color: Colors.black26, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: _changeButton,
            icon: (_isFavorite ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red,
            iconSize: 30.0,
          ),
          SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ],
      ),
    );
    // );

    Widget buttonSection = Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buttonConstructor(Icons.call, Colors.blue, 'Call'),
          _buttonConstructor(Icons.near_me, Colors.blue, 'Route'),
          _buttonConstructor(Icons.share, Colors.blue, "Info"),
        ],
      ),
    );

    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
          ).copyWith(
            secondary: Colors.green,
          ),
          textTheme:
              const TextTheme(bodyText2: TextStyle(color: Colors.purple)),
        ),
        home: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Image.network(
                    'https://raw.githubusercontent.com/flutter/website/master/examples/layout/lakes/step5/images/lake.jpg',
                    alignment: Alignment.center,
                    fit: BoxFit.fill),
              ),
              titleSection,
              buttonSection,
              Padding(
                padding: EdgeInsets.all(40),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'command in Visual Studio Code'
                        'to see the wireframe for each widget.'
                        'Column has various properties to control how it sizes itself and'
                        'how it positions its children. Here we use mainAxisAlignment to'
                        'center the children vertically; the main axis here is the vertical'
                        'axis because Columns are vertical (the cross axis would be'
                        'horizontal).',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      // shadows:
                      //     Shadow({this.color: Colors.accents, this.offset: Offset(5, 5)}),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

Widget _buttonConstructor(IconData icon, Color color, text) {
  return Container(
    height: 70,
    child: Column(children: [
      IconButton(
        alignment: Alignment.center,
        onPressed: () {},
        icon: Icon(
          icon,
          // size,
          color: color,
        ),
      ),
      Text(text)
    ]),
  );
}
