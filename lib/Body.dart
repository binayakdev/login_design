import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 40, left: 300),
        child: Text('Login',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(222, 174, 1, 1),
            )),
      ),
      Container(
        margin: EdgeInsets.only(right: 25),
        child: Image.asset(
          'assets/logo.png',
          height: 200,
          width: 300,
        ),
      ),
      Column(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
              child: TextFormField(
                autofocus: false,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(69, 85, 95, 1),
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Username',
                    contentPadding: EdgeInsets.fromLTRB(35, 25, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0))),
              )),
          Container(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                autofocus: false,
                obscureText: true,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(69, 85, 95, 1),
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(35, 25, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0))),
              ))
        ],
      ),
      Container(
          margin: EdgeInsets.only(top: 45),
          child: RaisedButton(
            child: Text("LOGIN",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
            onPressed: () {},
            color: Color.fromRGBO(235, 79, 111, 1),
            padding:
                EdgeInsets.only(top: 17, bottom: 17, left: 140, right: 140),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          )),
      Container(
        margin: EdgeInsets.only(top: 15, left: 80),
        child: Row(
          children: <Widget>[
            Text('Don\'t have an account?',
                style: TextStyle(color: Colors.white70, fontSize: 17)),
            InkWell(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 17,
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: () {
                print('Tap!');
              },
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 70),
        child: Text('Login with Social Network',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 17,
          )
        )
      ),
      Container(
        margin: EdgeInsets.only(top: 15, left: 105),
        child: Row(
          children: <Widget>[
            Image.asset('assets/facebook.png', height: 40, width: 60),
            Image.asset('assets/twitter.png', height: 40, width: 60),
            Image.asset('assets/google-plus.png', height: 40, width: 60)
          ],)
      )
    ]);
  }
}
