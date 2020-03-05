import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myexp/Utils.dart';

class RegisterScreen extends StatefulWidget {
  static const ROUTENAME = "/ex1";

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Utils.parseColor("AF95D4"), Utils.parseColor("EFBAE8")])),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 570,
                        width: 350,
                        color: Colors.purple,
                        child: Image.network(
                          "https://images.pexels.com/photos/2026960/pexels-photo-2026960.jpeg?cs=srgb&dl=child-holding-clear-glass-jar-with-yellow-light-2026960.jpg&fm=jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 570,
                        width: 350,
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Registration Info",
                                style: TextStyle(color: Colors.white, fontSize: 22),
                              ),
                              SizedBox(height: 24,),
                              TextField(
                                decoration: InputDecoration(hintText: "Name", hintStyle: TextStyle(color: Colors.white70),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
                                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                                style: TextStyle(color: Colors.white),
                              ),

                              SizedBox(height: 24,),
                              TextField(
                                onTap: (){
                                  showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1991,1), lastDate: DateTime(2052,12));
                                },
                                decoration: InputDecoration(hintText: "Birthdate", hintStyle: TextStyle(color: Colors.white70),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
                                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    suffix: Icon(Icons.calendar_today, color: Colors.white,size: 14.0, ),
                                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                                style: TextStyle(color: Colors.white),
                              ),

                              SizedBox(height: 24,),
                              Theme(data: Theme.of(context).copyWith(
                                  canvasColor: Utils.parseColor("#343434")
                              ),child: DropdownButtonFormField<int>(
                                  decoration: InputDecoration(hintText: "Name", hintStyle: TextStyle(color: Colors.white70),
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
                                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                      border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                                  value: 2,
                                  items: <DropdownMenuItem<int>>[
                                    DropdownMenuItem<int>(
                                      value: 1,
                                      child: Text("Male", style: TextStyle(color: Colors.white),),
                                    ),
                                    DropdownMenuItem<int>(
                                      value: 2,
                                      child: Text("Female", style: TextStyle(color: Colors.white),),
                                    ),
                                  ], onChanged: (int value) {  },
                                ),
                              ),

                              SizedBox(height: 24,),
                              TextField(
                                decoration: InputDecoration(hintText: "Email", hintStyle: TextStyle(color: Colors.white70),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
                                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                                style: TextStyle(color: Colors.white),
                              ),

                              SizedBox(height: 24,),
                              TextField(
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  WhitelistingTextInputFormatter.digitsOnly
                                ],
                                maxLength: 12,
                                decoration: InputDecoration(hintText: "Phone", hintStyle: TextStyle(color: Colors.white70),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
                                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                                style: TextStyle(color: Colors.white),
                              ),

                              SizedBox(height: 24,),
                              RaisedButton(child: Text("Submit"),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))), onPressed: () {  },)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
