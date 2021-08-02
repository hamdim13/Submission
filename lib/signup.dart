import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission/login.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      backgroundColor: Color(0XFFE5DA71),
      body: ListView(
        children: [
          Image.asset(
            'assets/love.png',
            width: 159,
            height: 209,
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Signup',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter your details for new account',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Row(
            children: [
              Text(
                'By contiuning your agree to our ',
                style: TextStyle(fontSize: 10),
              ),
              Text(
                'Terms of service ',
                style: TextStyle(fontSize: 10, color: Colors.deepPurpleAccent),
              ),
              Text(
                'and ',
                style: TextStyle(fontSize: 10),
              ),
              Text(
                'Privacy Policy ',
                style: TextStyle(fontSize: 10, color: Colors.deepPurpleAccent),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          ElevatedButton(
            child: Text('Register now'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Login();
              }));
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
              fixedSize: Size(110, 0),
            ),
          ),
        ],
      ),
    );
  }
}
