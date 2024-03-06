import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Home(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            color: Colors.amberAccent,
            centerTitle: true,
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        colorSchemeSeed: Colors.amber,
        useMaterial3: true,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.grey[200]
      ),
    ),
  );
}
