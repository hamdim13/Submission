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
      // children: [
      //   ListTile(
      //     leading: Image.asset(
      //       'assets/apel.png',
      //       width: 100,
      //       height: 110,
      //     ),
      //     title: Text(
      //       //'Apples are a popular fruit, containing antioxidants, vitamins, dietary fiber, and a range of other nutrients.',
      //       style: TextStyle(fontSize: 12),
      //     ),
      //     subtitle: Text('only \$4'),
      //     onTap: () {},
      //   ),
      //   ListTile(
      //     leading: Image.asset(
      //       'assets/jeruk.png',
      //       width: 100,
      //       height: 110,
      //     ),
      //     title: Text(
      //       'An orange is a type of citrus fruit that people often eat. Oranges are a very good source of Vitamin C.',
      //       style: TextStyle(fontSize: 12),
      //     ),
      //     subtitle: Text('only \$6'),
      //     onTap: () {},
      //   ),
      //   ListTile(
      //     leading: Image.asset(
      //       'assets/anggur.png',
      //       width: 100,
      //       height: 110,
      //     ),
      //     title: Text(
      //       'A grape is a fruit, botanically a berry, of the deciduous woody vines of the flowering plant genus Vitis.',
      //       style: TextStyle(fontSize: 12),
      //     ),
      //     subtitle: Text('only \$4'),
      //     onTap: () {},
      //   ),
      //   ListTile(
      //     leading: Image.asset(
      //       'assets/semangka.png',
      //       width: 100,
      //       height: 110,
      //     ),
      //     title: Text(
      //       'Watermelon is a vine that is native to the semi-desert areas of southern Africa. This plant is still related to pumpkins, melons and cucumbers.',
      //       style: TextStyle(fontSize: 12),
      //     ),
      //     subtitle: Text('only \$8'),
      //     onTap: () {},
      //   ),
      //   ListTile(
      //     leading: Image.asset(
      //       'assets/lychee.png',
      //       width: 100,
      //       height: 110,
      //     ),
      //     title: Text(
      //       'Lychee is a tropical fruit that is unique in appearance and flavor.',
      //       style: TextStyle(fontSize: 12),
      //     ),
      //     subtitle: Text('only \$4'),
      //     onTap: () {},
      //   ),
      //   ListTile(
      //     leading: Image.asset(
      //       'assets/nanas.png',
      //       width: 100,
      //       height: 110,
      //     ),
      //     title: Text(
      //       'The pineapple is a tropical fruit with a very familiar shape and sweet taste. While its often associated with Hawaii, it is not native to the islands, though it is now one of their major crops.',
      //       style: TextStyle(fontSize: 12),
      //     ),
      //     subtitle: Text('only \$3'),
      //     onTap: () {},
      //   ),
      //   ListTile(
      //     leading: Image.asset(
      //       'assets/durian.png',
      //       width: 100,
      //       height: 110,
      //     ),
      //     title: Text(
      //       'Durian is one of the most divisive foods in the world. Loved by some and hated by others, this tropical fruit can be served raw or cooked.',
      //       style: TextStyle(fontSize: 12),
      //     ),
      //     subtitle: Text('only \$4'),
      //     onTap: () {},
      //   ),
      // ],
    );
  }
}
