// ignore_for_file: use_key_in_widget_constructors, unused_import, prefer_const_constructors, prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import 'package:suryanti_flutter_application/MainanDataModel.dart';
import 'package:suryanti_flutter_application/Detail.dart';

class MainanHome extends StatefulWidget {
  @override
  _MainanHomeState createState() => _MainanHomeState();
}

class _MainanHomeState extends State<MainanHome> {
  double xOffset = 0;
  double yOffset = 0;

  bool isDrawerOpen = false;

  static List<String> judul = [
    "Mainan Kaktus Keren",
    "Mainan Balom Lempar Air",
    "Mainan Dinosaurus",
    "Mainan Pop It Pencet",
    "Mainan Balon Tembak Gelembung",
  ];

  static List gambar = [
    'assets/kaktus.jpg',
    'assets/balon.jpg',
    'assets/dino.jpg',
    'assets/popit.jpg',
    'assets/tembak.jpg',
  ];

  final List<MainanDataModel> MainanData = List.generate(judul.length,
      (index) => MainanDataModel('${judul[index]}', '${gambar[index]}'));

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(isDrawerOpen ? 0.85 : 1.00)
          ..rotateZ(isDrawerOpen ? -50 : 0),
        duration: Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: isDrawerOpen
              ? BorderRadius.circular(40)
              : BorderRadius.circular(0),
        ),
        child: Column(
          children: [
            isDrawerOpen
                ? GestureDetector(
                    child: Icon(Icons.arrow_back_ios),
                    onTap: () {
                      setState(() {
                        xOffset = 0;
                        yOffset = 0;
                        isDrawerOpen = false;
                      });
                    },
                  )
                : GestureDetector(
                    child: Icon(Icons.menu),
                    onTap: () {
                      setState(() {
                        xOffset = 290;
                        yOffset = 80;
                        isDrawerOpen = true;
                      });
                    },
                  ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(MainanData[index].judul,
                          style: TextStyle(fontSize: 20)),
                      subtitle: Text('Tekan Untuk Mengetahui Lebih Detail'),
                      leading: Image(
                        image: AssetImage(MainanData[index].gambar),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                Detail(mainanDataModel: MainanData[index])));
                      },
                    ),
                  );
                },
                itemCount: judul.length,
              ),
            ),
          ],
        ));
  }
}
