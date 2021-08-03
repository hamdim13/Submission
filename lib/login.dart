import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission/halaman.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      backgroundColor: Color(0xFFD094FF),
      body: ListView(
        children: [
          Image.asset(
            'assets/paket.png',
            width: 159,
            height: 219,
          ),
          Padding(
            padding: EdgeInsets.all(3.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
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
                'Enter your login details and password',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onChanged: (value) {
              setState(() {});
            },
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onChanged: (value) {
              setState(() {});
            },
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Text(
            'Forgot Password ?',
            style: TextStyle(color: Colors.red),
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          ElevatedButton(
            child: Text('Login Now'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Halaman();
              }));
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
              fixedSize: Size(110, 0),
            ),
          ),
          Row(
            children: [
              Text('Don\'t have account ? '),
              Text(
                'Create new account',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
