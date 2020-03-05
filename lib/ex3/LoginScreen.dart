import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myexp/Utils.dart';

class LoginScreenEx extends StatefulWidget {
  static const ROUTENAME = "/ex3";

  @override
  _LoginScreenExState createState() => _LoginScreenExState();
}

class _LoginScreenExState extends State<LoginScreenEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "Sweet",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Align(
            alignment: Alignment.centerRight,
            child: CustomPaint(
              child: Container(
                width: 0,
                height: 0,
              ),
              painter: CirclePainter(),
            )),
        Align(
            alignment: Alignment.topRight,
            child: ClipPath(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 250,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Utils.parseColor("EF71BB").withOpacity(0.7),
                  Utils.parseColor("D375D3").withOpacity(0.7)
                ])),
              ),
              clipper: TopCurveClipper(),
            )),
        Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {},
                    child: Text(
                      "Schedule A Demo",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0), side: BorderSide(color: Colors.yellow)),
                    onPressed: () {},
                    child: Text(
                      "LEARN MORE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {},
                    child: Text(
                      "Blog",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.exit_to_app,
                          color: Colors.white,
                          size: 16.0,
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Login",
                style: TextStyle(color: Colors.deepPurple, fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                height: 4.0,
                width: 100.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Utils.parseColor("F7B244"), Utils.parseColor("D568B9")])),
              ),
              SizedBox(
                height: 32.0,
              ),
              Text(
                "Welcome back! Login to access the Sweet Marketplace.\nDid you forgot your password?",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54, fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 48.0,
              ),
              Container(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(hintText: "Username"),
                  )),
              SizedBox(
                height: 16.0,
              ),
              Container(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                    obscureText: true,
                  )),
              SizedBox(
                height: 16.0,
              ),
              InkWell(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                      width: 350,
                      height: 48.0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.exit_to_app,
                            color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "CONTINUE",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Utils.parseColor("F7B244"), Utils.parseColor("D568B9")],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(0.5, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp))),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint();
    p.color = Colors.blue.withOpacity(0.7);
    canvas.drawArc(Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: 170), 1.4, 3.9, false, p);
    canvas.drawCircle(Offset(size.width / 2 - 180, size.height / 2 + 180), 25, p);
    p.color = Colors.yellow.withOpacity(0.7);
    canvas.drawCircle(Offset(size.width / 2 - 180, size.height / 2), 60, p);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}

class TopCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(size.width - 70, size.height - 80, size.width - 350, size.height - 80);
    path.quadraticBezierTo(100, 150, 0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
