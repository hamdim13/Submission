import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission/dummy.dart';
import 'package:submission/kategori.dart';

class Halaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      backgroundColor: Color(0XFFB6E4A0),
      body: GridView(
        children:
            data.map((e) => Kategori(e.title, e.color, e.assets)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 3 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
