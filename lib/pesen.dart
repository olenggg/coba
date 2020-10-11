import 'package:coba/home.dart';
import 'package:flutter/material.dart';

class Pesen extends StatefulWidget {
  @override
  PesenPage createState() => PesenPage();
}

class PesenPage extends State<Pesen> {
  TextEditingController nama = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController telp = TextEditingController();
  TextEditingController kota = TextEditingController();
  TextEditingController beras = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MAU PESAN???'),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int) {
                return Container(
                  margin: EdgeInsets.all(30),
                  child: Column(children: <Widget>[
                    Container(
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                prefixIcon: Icon(Icons.person),
                                hintText: 'Nama'),
                            controller: nama)),
                    Container(
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                prefixIcon: Icon(Icons.mail),
                                hintText: 'Alamat'),
                            controller: alamat)),
                    Container(
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                prefixIcon: Icon(Icons.phone),
                                hintText: 'No Telp'),
                            controller: telp)),
                    Container(
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                prefixIcon: Icon(Icons.home),
                                hintText: 'kota'),
                            controller: kota)),
                    Container(
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                prefixIcon: Icon(Icons.home),
                                hintText: 'Beras Yang Mana'),
                            controller: beras)),
                    Container(
                      child: RaisedButton(
                        color: Colors.lightBlue,
                        child: Text('Undefined Button'),
                        onPressed: () {
                          if (nama.text.isEmpty ||
                              alamat.text.isEmpty ||
                              telp.text.isEmpty ||
                              kota.text.isEmpty ||
                              beras.text.isEmpty) {
                            return showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  // Retrieve the text the user has entered by using the
                                  // TextEditingController.
                                  title: Text("Tolong Diisi"),
                                  content: Text("Masih Kosong kak."),
                                  actions: <Widget>[
                                    FlatButton(
                                        onPressed: () =>
                                            Navigator.of(context).pop(true),
                                        child: Text('OK'))
                                  ],
                                );
                              },
                            );
                          }
                          return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Data pemesanan BEras"),
                                content: Text(nama.text +
                                    "\n" +
                                    "dengan alamat \n" +
                                    alamat.text +
                                    "\n" +
                                    "& no telp \n" +
                                    telp.text +
                                    "\n" +
                                    "Tinggal di kota \n" +
                                    kota.text +
                                    "\n" "telah berhasil memesan beras \n" +
                                    beras.text),
                                // Retrieve the text the user has entered by using the
                                // TextEditingController.
                                actions: <Widget>[
                                  FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => homePage()),
                                        );
                                      },
                                      child: Text('OH NO'))
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ]),
                );
              },
              childCount: 1,
            ))
          ],
        ));
  }
}
