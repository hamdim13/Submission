import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission/halaman.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

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
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: TextStyle(
                      color: Color(0xFF485167),
                      fontWeight: FontWeight.normal,
                      fontSize: 12),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    filled: true,
                    isDense: true,
                    fillColor: Color(0xFFF8F8F8),
                    contentPadding: EdgeInsets.all(14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Color(0xFFDEDEDE),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Data diperlukan";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                Text(
                  "Password",
                  style: TextStyle(
                      color: Color(0xFF485167),
                      fontWeight: FontWeight.normal,
                      fontSize: 12),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    isDense: true,
                    fillColor: Color(0xFFF8F8F8),
                    contentPadding: EdgeInsets.all(14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Color(0xFFDEDEDE),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Data diperlukan";
                    } else if (value.length <= 8) {
                      return "Minimum Karakter 8";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ],
            ),
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
              if (formKey.currentState!.validate()) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Halaman();
                }));
              }
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
