import 'package:flutter/material.dart';
import 'package:submission/profil.dart';

class DrawerApp extends StatelessWidget {
  String imageNetwork =
      'https://makassarcoding.com/wp-content/uploads/2020/09/DSCF6164-min-2048x1155.jpg';
  String name = 'AHmad ';
  String email = '123435';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: new Text(name),
          accountEmail: new Text(email),
          currentAccountPicture: new CircleAvatar(
            backgroundImage: NetworkImage(imageNetwork),
          ),
        ),
        //Tampilan Bawah drawe atau list menunya
        ListTile(
            leading: Icon(Icons.home),
            title: Text('HOME'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                // ignore: missing_required_param
                return Profil(
                  gambar: imageNetwork,
                  nama: name,
                  gmail: email,
                );
              }));
            }),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('FORM'),
          // onTap: () {
          //   Navigator.pushReplacementNamed(context, Routes.form);
          // },
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('LIST'),
          // onTap: () =>
          //     Navigator.pushReplacementNamed(context, Routes.listbuku)
        ),
      ]),
    );
  }
}
