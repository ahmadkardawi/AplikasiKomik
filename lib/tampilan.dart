import 'package:flutter/material.dart';
import 'package:submission/detail.dart';
import 'package:submission/model/Model.dart';
import 'DrawerView.dart';

class Tampilan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Baca Manga')),
          backgroundColor: Colors.red[900],
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.shopping_basket_sharp,
                  color: Colors.white,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: null)
          ],
        ),
        // ignore: missing_required_param
        drawer: DrawerApp(),
        body: Container(
          color: Colors.black,
          child: ListView(
            children: model.map((place) {
              // ignore: deprecated_member_use
              return FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Detail(place: place);
                  }));
                },
                child: Card(
                  color: Colors.blueGrey[900],
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.asset(place.imageAsset,
                            fit: BoxFit.cover, height: 130, width: 245),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                place.judul,
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                place.gendre,
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                place.pengarang,
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

var model = [
  Model(
    imageAsset: 'boruto.jpg',
    judul: 'Boruto',
    pengarang: 'Pengarang: Masashi kishimoto',
    gendre: 'Gendre: Action, Comedy, School, Shounen',
    sinopsis:
        'Sinopsis: Karakter Boruto telah menerima timbal balik penerimaan kritikus yang beragam. Hubungannya dengan ayahnya dikritik karena para pengulas menilai konsep seperti ini sudah digunakan terlalu sering di manga Naruto. Di Boruto: Naruto the Movie, perkembangannya dipuji karena adegan bertarungnya dan mengenai bagaimana ia memahami tindakan ayahnya.',
  ),
  Model(
    imageAsset: 'one_piece.jpg',
    judul: 'One Peace',
    pengarang: 'Pengarang: Eiichiro Oda',
    gendre: 'Gendre: Action, Shounen, bajak laut',
    sinopsis:
        'Sinopsis: ONE PIECE adalah sebuah Manga dan Anime yang menceritakan tentang petualangan sekelompok bajak laut dalam mencari harta karun legendaris, One Piece. One Piece dibuat oleh Eiichiro Oda pada Agustus 1997 di Shonen Jump terbitan Shueisha dan hingga kini masih terus berlanjut. Versi anime nya mulai dibuat pada Oktober 1999 dan kini telah mencapai lebih dari 500 episode. ',
  ),
  Model(
    imageAsset: 'black_clover.webp',
    judul: 'Black Clover',
    pengarang: 'Pengarang: Yuki Tabata',
    gendre: 'Gendre: Action, Magic, School, Shounen',
    sinopsis:
        'Sinopsis:  Ceritanya mengisahkan tentang seorang anak laki-laki bernama Asta yang lahir tanpa kekuatan sihir, suatu fenomena yang tidak normal di dunia tempatnya tinggal. Bersama dengan teman-temannya dari Black Bulls, dia bercita-cita untuk menjadi Raja Penyihir.',
  ),
  Model(
    imageAsset: 'gintama.jpg',
    judul: 'Gintama',
    pengarang: 'Pengarang: Hideaki Sorachi',
    gendre: 'Gendre: Action, Comedy, Shounen, Military',
    sinopsis:
        'Sinopsis: Bersetting di Edo yang telah ditaklukkan oleh alien bernama Amanto, cerita mengikuti kehidupan dari sudut pandang samurai Gintoki Sakata, yang bekerja sebagai freelancer bersama teman-temannya Shinpachi Shimura dan Kagura untuk membayar sewa bulanan',
  ),
  Model(
    imageAsset: 'horimiya.jpg',
    judul: 'Horimiya',
    pengarang: 'Pengarang: Hero Dokkai Ahen',
    gendre: 'Gendre: School, Romance, Slice of Life, Shounen',
    sinopsis:
        'Sinopsis: Kyouko Hori merupakan salah satu siswi yang menjadi panutan di sekolahnya karena dia terkenal ramah ke semua orang dan memiliki nilai akademis yang tinggi. Walaupun dia diidolakan oleh murid-murid lain, Hori menyimpan sifat yang tak banyak diketahui orang.',
  ),
  Model(
    imageAsset: 'lasdan.jpg',
    judul: 'Lasdan',
    pengarang: 'Pengarang: Toshio Sato',
    gendre: 'Gendre: Adventure, Fantasy',
    sinopsis:
        'Sinopsis: Lasdan adalah kisah seorang anak bernama Llyod yang merupakan seorang petualang baru dengan impian untuk menemukan “kekuatan sejati” di dalam ibukota yang ia kagumi. Ia berasal dari lingkungan yang selalu menganggapnya sebagai pemuda yang lemah. Oleh karena itu ia memulai perjalanannya dari kampung halamannya menuju ibukota. ',
  ),
  Model(
    imageAsset: 'mushoku.jpg',
    judul: 'Mushoku Tensei',
    pengarang: 'Pengarang: Rifujin na Magonote',
    gendre: 'Gendre: Adventure, Magic, Fantasy',
    sinopsis:
        'Sinopsis: Anime ini bercerita tentang seorang laki-laki WIBU yang berusia 34 tahun yang tewas tertabrak truk karena berusaha menyelamatkan orang yang tidak dikenalinya. Karena hal tersebut, lelaki NEET itu bereinkarnasi ke dalam dunia sihir (isekai) sebagai seseorang bayi yang terlahir dengan kekuatan dan sihir yang hebat bernama Rudeus Greyrat.',
  ),
  Model(
    imageAsset: 'nanatsu.jpg',
    judul: 'Nanatsu No Taisai',
    pengarang: 'Pengarang: Nakaba Suzuki',
    gendre: 'Gendre: Action, Comedy, School, Shounen',
    sinopsis:
        'Sinopsis: Anime ini menceritakan sebuah kerajaan bernama Liones. dalam kerajaan tersebut terdapat 7 kesatria yang sangat hebat dan disegani karena kehebatan mereka. 7 kesatria tersebut di buat oleh 7 pendosa besar dengan lambang binatang buas sebagai lambang pengenal mereka.',
  ),
  Model(
    imageAsset: 'one_punch.jpg',
    judul: 'One Punch Man',
    pengarang: 'Pengarang: pena ONE',
    gendre: 'Gendre: Action, Comedy, School, Shounen',
    sinopsis:
        'Sinopsis: One Punch Man menceritakan tentang seorang Superhero bernama asli Saitama yang memiliki kemampuan pukulan maut. Saking luar biasa pukulannya, ia mampu menghabisi monster-monster raksasa hanya dengan sekali pukulan saja. Sejak saat itu Saitama dikenal dengan nama One Punch Man, sesuai judul manganya.',
  ),
  Model(
    imageAsset: 'shingeki.jpg',
    judul: 'Shingeki No Kyojin',
    pengarang: 'Pengarang: Hajime Isayama',
    gendre: 'Gendre: Action, Comedy, School, Shounen',
    sinopsis:
        'Sinopsis:  SNK merupakan salah satu manga yang menyajikan intrik pertarungan antar ras manusia dengan ras kyojin/titan *Kyojin dalam bahasa Jepang memiliki arti raksasa pada manga ini memperlihatkan bagaimana Eren sebagai salah satu tokoh utamanya beserta kamerad-kameradnya bertarung melawan titan sebuah mahluk yang menyerupai manusia yang sadisnya bukan main demi keberlansungan umat manusia dengan doktrin bahwa merekalah umat manusia terakhir di bumi ini. Hanya sebuah dinding besar yang memisahkan mereka dengan para Titan.',
  ),
];
