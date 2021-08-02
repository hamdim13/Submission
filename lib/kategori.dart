import 'package:flutter/material.dart';

class Kategori extends StatelessWidget {
  late final String title;
  late final Color color;
  late final String assets;

  Kategori(this.title, this.color, this.assets);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('blaaa');
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        height: 12,
        width: 15,
        child: Align(
          alignment: Alignment.topRight,
          child: Text(
            title,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage(assets), fit: BoxFit.cover),
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
