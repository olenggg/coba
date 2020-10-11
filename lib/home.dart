import 'dart:html';
import 'package:coba/pesen.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  homePageState createState() => homePageState();
}

class homePageState extends State<homePage> {
  bool _tekan = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Beras Sehat Rassena"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.blue[100], Colors.white])),
          ),
          Column(
            children: <Widget>[
              Flexible(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/Beras Rassena 2 Kg.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Beras Putih 2 Kg.jpg"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Beras Merah 2 Kg.jpg"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Beras Hitam 2 Kg.jpg"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Beras Coklat 2 Kg.jpg"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 4,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Beras Sehat Rassena",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Flexible(
                        flex: 1,
                        child: ListView(
                          children: <Widget>[
                            Text(
                                "Beras Sehat Rassena adalah beras yang sehat alami dan enak blabalabalalalallalabalakalabalalala"),
                            Text(""),
                            Text(
                                "Bwearas ini diperoleh dan diproses dengan tangan terbaik dari TUlungagng aaaaaa "),
                            Text(""),
                            Text(
                                "Pilihan Rasa pada Beras Sehar RAssena adaahj beras merah, putih, hitam, dan coklat. Rasanya yang enak dan beras yang pulen menjadikan Beras Sehat RAssena digemari masyarakat"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(children: <Widget>[
                RaisedButton(
                  shape: RoundedRectangleBorder(),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute<Null>(
                        builder: (BuildContext context) {
                      return new Pesen();
                    }));
                  },
                )
              ]),
            ],
          ),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 15, right: 15),
            child: FloatingActionButton(
              child: Icon(
                Icons.favorite,
                color: _tekan ? Colors.red : Colors.grey,
              ),
              backgroundColor: Colors.white,
              onPressed: () {
                setState(
                  () {
                    _tekan = !_tekan;
                  },
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
