// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:suryanti_flutter_application/MainanDataModel.dart';

class Detail extends StatelessWidget {
  final MainanDataModel mainanDataModel;
  const Detail({Key? key, required this.mainanDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(mainanDataModel.judul),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                width: 300,
                image: AssetImage(mainanDataModel.gambar),
              ),
              Text(
                mainanDataModel.judul,
                style: TextStyle(fontSize: 20),
              ),
            ],
          )
        ],
      ),
    );
  }
}
