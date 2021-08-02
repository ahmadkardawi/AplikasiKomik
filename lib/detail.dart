import 'package:flutter/material.dart';
import 'package:submission/model/Model.dart';

class Detail extends StatelessWidget {
  final Model place;

  Detail({@required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset(place.imageAsset, height: 190, width: 300),
                  padding: EdgeInsets.all(32.0),
                ),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      FavoriteButton(),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Text(
                place.judul,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
            Card(
              color: Colors.grey[850],
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5.0),
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(height: 8.0),
                        Text(
                          place.pengarang,
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(height: 8.0),
                        Text(
                          place.gendre,
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.grey[850],
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  place.sinopsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
