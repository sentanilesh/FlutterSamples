import 'package:flutter/material.dart';
import 'package:myexp/ex1/RegisterScreen.dart';
import 'package:myexp/ex2/AnimationScreen.dart';
import 'package:myexp/ex3/LoginScreen.dart';
import 'package:myexp/ex4/PortfolioScreen.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Index"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Register"),
              onPressed: () {
                Navigator.pushNamed(context, RegisterScreen.ROUTENAME);
              },
            ),
            RaisedButton(
              child: Text("Animation"),
              onPressed: () {
                Navigator.pushNamed(context, AnimationScreen.ROUTENAME);
              },
            ),
            RaisedButton(
              child: Text("Login"),
              onPressed: () {
                Navigator.pushNamed(context, LoginScreenEx.ROUTENAME);
              },
            ),
            RaisedButton(
              child: Text("Portfolio"),
              onPressed: () {
                Navigator.pushNamed(context, PortfolioScreen.ROUTENAME);
              },
            ),
          ],
        ),
      ),
    );
  }
}
