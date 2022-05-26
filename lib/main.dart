// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:suryanti_flutter_application/DrawerScreen.dart';
import 'package:suryanti_flutter_application/MainanHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Distributor Mainan',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('E-Distributor Mainan'),
        ),
        body: Stack(
          children: [
            DrawerScreen(),
            MainanHome(),
          ],
        ),
      ),
    );
  }
}
