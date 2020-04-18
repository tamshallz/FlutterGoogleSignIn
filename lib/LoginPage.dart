import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_google_sign_in/SignIn.dart';
import 'package:flutter_google_sign_in/SuccessScreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget signInButton() {
    return OutlineButton(
      borderSide: BorderSide(color: Colors.grey, width: 2),
      onPressed: () {
            signInWithGoogle().whenComplete(() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return SuccessScreen();
          },
        ),
      );
    });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              'images/google_logo.png',
              height: 30,
            ),
            SizedBox(width: 10),
            Text(
              'Sign in with Google',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(
              size: 130,
            ),
            SizedBox(height: 15),
            signInButton()
          ],
        ),
      ),
    );
  }
}
