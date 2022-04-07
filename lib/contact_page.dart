import 'package:flutter/material.dart';
import 'home_page.dart';
import 'main.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Page"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text(
              "Contact Us",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Center(
              child: Text(
            "Nama : Ardian Firdaus\nNim  : 362055401020\nEmail : ardiaanf@gmail.com",
            style: TextStyle(fontSize: 15),
          )),
          Center(
            child: RaisedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => HomePage());
                Navigator.pop(context);
              },
              child: Text("Back To Home Page"),
            ),
          )
        ],
      ),
    );
  }
}
