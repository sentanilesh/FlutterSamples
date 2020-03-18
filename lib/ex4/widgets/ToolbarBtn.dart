import 'package:flutter/material.dart';
import 'dart:html' as html;


class ToolbarBtn extends StatefulWidget {
  String title;
  Function onPressed;

  ToolbarBtn({@required this.title, @required this.onPressed});

  @override
  _ToolbarBtnState createState() => _ToolbarBtnState();
}

class _ToolbarBtnState extends State<ToolbarBtn> {
  static final appContainer = html.window.document.getElementById('app-container');
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(onEnter: (evt){
      setState(() {
        isHover = true;
        appContainer.style.cursor = 'pointer';
      });
    }, onExit: (evt){
      setState(() {
        isHover = false;
        appContainer.style.cursor = 'default';
      });
    }, child: Column(mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(width: 105,padding: EdgeInsets.zero,
          child: FlatButton(visualDensity: VisualDensity.compact, splashColor: Colors.transparent, hoverColor: Colors.transparent,padding: EdgeInsets.zero,
            highlightColor: Colors.transparent, child: Text("${widget.title}", style: TextStyle(fontSize: 16),),onPressed: () {  },),
        ),
        Container(height: isHover ? 2 : 0, color: Colors.blue, width: 50,)
      ],
    ));
  }
}
