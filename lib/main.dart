import 'package:flutter/material.dart';
import 'package:myexp/ex1/RegisterScreen.dart';
import 'package:myexp/ex2/AnimationScreen.dart';
import 'package:myexp/screens/IndexPage.dart';

import 'ex3/LoginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: '/',
      routes: {
        "/" : (context)=> IndexPage(),
        RegisterScreen.ROUTENAME : (context)=> RegisterScreen(),
        AnimationScreen.ROUTENAME : (context)=> AnimationScreen(),
        LoginScreenEx.ROUTENAME : (context)=> LoginScreenEx(),
      },
    );
  }
}