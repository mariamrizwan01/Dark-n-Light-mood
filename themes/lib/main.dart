import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool _iconBool = false;
IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

ThemeData _lightTheme = ThemeData(
  primarySwatch: Colors.orange,
  brightness: Brightness.light,
);

ThemeData _darkTheme = ThemeData(
  primarySwatch: Colors.deepPurple,
  brightness: Brightness.dark,
);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconBool ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(title: const Text("Dark & Light Theme"), actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _iconBool = !_iconBool;
              });
            },
            icon: Icon(_iconBool ? _iconDark : _iconLight),
          ),
        ]),
      ),
    );
  }
}
