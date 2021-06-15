import 'package:flutter/material.dart';

Widget buildText(String text , Color color) =>Container(
  alignment: Alignment.center,
  width: 160,
  height: 100,
  color: color,
  child: Text(
    text,
    style: TextStyle(
      color: Colors.white,
      fontSize: 25
    ),
    textAlign: TextAlign.center,
  ),
);