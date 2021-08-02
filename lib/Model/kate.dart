import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Kate {
  final String id;
  final String title;
  final Color color;
  final String assets;

  const Kate(
      {required this.id,
      required this.title,
      this.color = Colors.orange,
      required this.assets});
}
