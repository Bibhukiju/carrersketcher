import 'package:flutter/material.dart';
import 'pages/loginpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            border: InputBorder.none,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          appBarTheme: AppBarTheme(
              color: Colors.white,
              centerTitle: true,
              iconTheme: IconThemeData(color: Colors.blue[200])),
          primaryColor: Colors.blue[800]),
    );
  }
}
