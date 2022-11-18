import 'package:flutter/material.dart';

TextStyle titleStyle =
    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);

TextStyle contentStyle = const TextStyle(fontSize: 16, color: Colors.black45);

BoxDecoration cardDecoration({Color color = Colors.white}) {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: color,
      boxShadow: const [
        BoxShadow(blurRadius: 1, spreadRadius: 2, color: Colors.black12)
      ]);
}

EdgeInsets cardPadding = const EdgeInsets.all(18);
