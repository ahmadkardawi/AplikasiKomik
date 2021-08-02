import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  Profil({this.gambar, this.nama, this.gmail});
  final String gambar;
  final String nama;
  final String gmail;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Stack(children: [
                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.all(40.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(gambar), fit: BoxFit.cover),
                          shape: BoxShape.circle),
                      padding: EdgeInsets.all(30.0),
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    title: Text(
                      nama,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                  ),
                ]),
              ]),
        ));
  }
}
