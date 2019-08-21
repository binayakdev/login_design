import 'package:flutter/material.dart';
import 'Body.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * MediaQuery is used to get the size of the mobile screen.
     * In order to use the MediaQuery we need a MaterialApp or a WidgetApp around your widget.
     * Flutter will always look up the widget tree to find the widget.
     *  */
    Size size = MediaQuery.of(context).size; 
    return Scaffold(
      // Stack: the Widgets get stacked upon one another. It works like z-index in CSS.
      body: Stack(
        children: <Widget>[
          Center(
            child: Image.asset('assets/night_hill.png',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
            )
          ),
          // This container is used to have a slightly darker overlay over the image to make the image dark and font easier to read.
          Container(
            color: Colors.black12,
            width: size.width,
            height: size.height,
          ),
          Main(),
        ]
      )
    );
  }
}