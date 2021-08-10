import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission/login.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
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
          Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Name",
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
              if (formKey.currentState!.validate()) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              }
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
