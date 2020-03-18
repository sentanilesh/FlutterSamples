import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myexp/Utils.dart';
import 'package:myexp/ex4/widgets/ToolbarBtn.dart';

// https://colorlib.com/wp/template/ronaldo/
class PortfolioScreen extends StatefulWidget {
  static const ROUTENAME = "/ex4";

  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            AppBar(backgroundColor: Colors.transparent, automaticallyImplyLeading: false, elevation: 0.0, actions: <Widget>[
              ToolbarBtn(title: "Home", onPressed: () { },),
              ToolbarBtn(title: "About",onPressed: () {  },),
              ToolbarBtn(title: "Resume",onPressed: () {  },),
              ToolbarBtn(title: "Services",onPressed: () {  },),
              ToolbarBtn(title: "Projects",onPressed: () {  },),
              ToolbarBtn(title: "My Blog",onPressed: () {  },),
              ToolbarBtn(title: "Contact",onPressed: () {  },),
            ],),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(child: Row(children: <Widget>[
                    Container(width: MediaQuery.of(context).size.width / 2, height: MediaQuery.of(context).size.height, color: Utils.parseColor("3e64ff").withOpacity(.1),),
                    Container(width: MediaQuery.of(context).size.width / 2, height: MediaQuery.of(context).size.height, ),
                  ],),),
                  Container(child: Row(children: <Widget>[
                    Container(width: MediaQuery.of(context).size.width / 2, height: MediaQuery.of(context).size.height, child: Align(alignment: Alignment.centerRight, child: Image.asset("assets/profile.png")),),
                    Container(width: MediaQuery.of(context).size.width / 2, height: MediaQuery.of(context).size.height, child: Padding(
                      padding: const EdgeInsets.only(left: 48, top: 48),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                        Text("About Me", style: TextStyle(fontSize: 50,fontWeight: FontWeight.w700),),
                        SizedBox(height: 25,),
                        Text("A small river named Duden flows by their place and supplies it with the necessary regelialia.", style: TextStyle(color: Utils.parseColor("999999"),fontWeight: FontWeight.w600, fontSize: 18) ,),
                        SizedBox(height: 25,),
                        Table(columnWidths: {
                          0: FlexColumnWidth(0.5),
                          1: FlexColumnWidth(1),
                          2: FlexColumnWidth(1)
                        }, children: <TableRow>[
                          TableRow(children: <Widget>[
                            Text("Name:", style: TextStyle(color: Utils.parseColor("000000"),fontWeight: FontWeight.w600,fontSize: 16),),
                            Text("Ronaldo Fredrickson", style: TextStyle(color: Utils.parseColor("999999"),fontWeight: FontWeight.w400,fontSize: 16),),
                            SizedBox(height: 30,)
                          ]),

                          TableRow(children: <Widget>[
                            Text("Date of birth:", style: TextStyle(color: Utils.parseColor("000000"),fontWeight: FontWeight.w600,fontSize: 16),),
                            Text("November 28, 1989", style: TextStyle(color: Utils.parseColor("999999"),fontWeight: FontWeight.w400,fontSize: 16),),
                            SizedBox(height: 30,)
                          ]),

                          TableRow(children: <Widget>[
                            Text("Address:", style: TextStyle(color: Utils.parseColor("000000"),fontWeight: FontWeight.w600,fontSize: 16),),
                            Text("San Francisco CA 97987 USA", style: TextStyle(color: Utils.parseColor("999999"),fontWeight: FontWeight.w400,fontSize: 16),),
                            SizedBox(height: 30,)
                          ]),

                          TableRow(children: <Widget>[
                            Text("Zip code:", style: TextStyle(color: Utils.parseColor("000000"),fontWeight: FontWeight.w600,fontSize: 16),),
                            Text("1000", style: TextStyle(color: Utils.parseColor("999999"),fontWeight: FontWeight.w400,fontSize: 16),),
                            SizedBox(height: 30,)
                          ]),

                          TableRow(children: <Widget>[
                            Text("Email:", style: TextStyle(color: Utils.parseColor("000000"),fontWeight: FontWeight.w600,fontSize: 16),),
                            Text("ronaldo@gmail.com", style: TextStyle(color: Utils.parseColor("999999"),fontWeight: FontWeight.w400,fontSize: 16),),
                            SizedBox(height: 30,)
                          ]),

                          TableRow(children: <Widget>[
                            Text("Phone:", style: TextStyle(color: Utils.parseColor("000000"),fontWeight: FontWeight.w600,fontSize: 16),),
                            Text("+1-2234-5678-9-0", style: TextStyle(color: Utils.parseColor("999999"),fontWeight: FontWeight.w400,fontSize: 16),),
                            SizedBox(height: 30,)
                          ]),
                        ],),
                        SizedBox(height: 25,),
                        Text.rich(TextSpan(children: [
                          TextSpan(text: "123", style: TextStyle(color: Utils.parseColor("0000FF"),fontSize: 22, fontWeight: FontWeight.w600)),
                          TextSpan(text: " Project complete", style: TextStyle(color: Utils.parseColor("000000"),fontSize: 22)),
                        ])),
                        SizedBox(height: 25,),
                        RaisedButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)), onPressed: () {  },elevation: 0.0,color: Utils.parseColor("#3e64ff"),padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),  child: Text("DOWNLOAD CV",style: TextStyle(color: Colors.white,fontSize: 13,letterSpacing: 2.0),),)
                      ],),
                    ),),
                  ],),),
                  Center(
                    child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                      Text("Microsoft"),
                      Text("Android"),
                      Text("Java"),
                      Text("Google"),
                      Text("Adobe"),

                    ],),
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
