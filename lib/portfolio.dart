import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'main.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio Page"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: ClipOval(
              child: Image.network(
                "https://cdn.pixabay.com/photo/2016/04/25/12/06/man-1351761__340.png",
                width: 200,
                height: 250,
              ),
            ),
          ),
          Center(
            child: Text("I'm Person\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu mauris eget justo porta aliquet ac sit amet dolor. Duis feugiat nulla quis maximus pretium. Aenean a mauris nec nisi viverra aliquet eget eget ante. "),
          ),
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
