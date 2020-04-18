import 'package:flutter/material.dart';
import 'package:flutter_google_sign_in/LoginPage.dart';
import 'package:flutter_google_sign_in/SignIn.dart';

class SuccessScreen extends StatelessWidget {
  Padding buildPaddingText(String titleHeading, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 15),
      child: Column(
        children: <Widget>[
          Text(
            titleHeading,
            style: kNormalTextStyle,
          ),
          Text(
            title,
            style: kBoldTextStyle,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue[100],
              Colors.blue[400],
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(imageUrl),
              ),
              buildPaddingText(
                'NAME',
                name,
              ),
              buildPaddingText(
                'EMAIL',
                email,
              ),
              RaisedButton(
                color: Colors.deepPurple,
                onPressed: () {
                  signOutGoogle();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sign Out',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

const kNormalTextStyle =
    TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black54);

const kBoldTextStyle = TextStyle(
    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple);
