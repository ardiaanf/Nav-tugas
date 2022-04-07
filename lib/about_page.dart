import 'package:flutter/material.dart';
import 'package:cobalagi/home_page.dart';
import 'main.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text(
              "About Us\nNama Saya adalah Ardian Firdaus\nAlamatnya Desa Rejoagung Kecamatan Srono Kabupaten Banyuwangi Jawa Timur\nHobi saya sendiri, yaitu Mendengarkan Musik, Sepak Bola, Bulu Tangkis dan Suka menggambar",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: RaisedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => HomePage());
                Navigator.pop(context);
              },
              child: Text("Back to home page"),
            ),
          )
        ],
      ),
    );
  }
}
