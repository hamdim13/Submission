import 'package:flutter/material.dart';
import 'package:submission/login.dart';
import 'package:submission/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FruitScreen(),
    );
  }
}

class FruitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF87FFE7),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/ojek.png',
                  width: 300,
                  height: 290,
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Get the fastest',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Delivery groceries at home',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ger your groceries in as fast as one hour',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text('Get Started'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Signup();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent, fixedSize: Size(110, 0)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text('Log in'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Login();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.greenAccent, fixedSize: Size(110, 0)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
