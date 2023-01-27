import 'package:flutter/material.dart';
import 'package:kleenapp/pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/':(context) => Home(),
        // '/home':
        // 'shop':(context) => ,
        // 'profile':(context) => ,
        // 'categories':(context) => ,
      },
    )
  );
}
