import 'package:flutter/material.dart';

import 'package:flutter_google_sign_in/LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff2A4365),
      ),
      home: LoginPage(),
    );
  }
}

