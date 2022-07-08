import 'package:flutter/material.dart';
import 'package:ott/Screen/HomePage.dart';
import 'package:ott/screen/Second_Page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes:{
      '/':(context)=> Home_Page(),
      'second':(context)=> Second_Page(),
    },
  ),);
}
