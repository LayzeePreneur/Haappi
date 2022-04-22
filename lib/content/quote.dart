import 'package:flutter/material.dart';
import "dart:math";

class Quote extends StatelessWidget {
  //..
  fetchQuote() {
    var quotes = [
      "The greatest glory in living lies not in never falling, but in rising every time we fall.",
      "The future belongs to those who believe in the beauty of their dreams.",
      "The battles that count aren't the ones for gold medals. The struggles within yourself—the invisible battles inside all of us—that's where it's at.",
      "Tell me and I forget. Teach me and I remember. Involve me and I learn.",
      "In the end, it's not the years in your life that count. It's the life in your years.",
      "Never let the fear of striking out keep you from playing the game.",
      "Life is either a daring adventure or nothing at all.",
      "You miss 100% of the shots you don't take.",
      "It does not matter how slowly you go as long as you do not stop.",
      "Remember that not getting what you want is sometimes a wonderful stroke of luck.",
      "The power of imagination makes us infinite.",
      "Don’t count the days, make the days count.",
      "Do, or do not. There is no try.",
      "The way to get started is to quit talking and begin doing",
    ];

    var element = getRandomElement(quotes);
    // print(element);
    return element;
  }

  getRandomElement<T>(List<T> list) {
    final random = new Random();
    var i = random.nextInt(list.length);
    return list[i];
  }

  //..
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Motivation Quote for you")),
      body: Column(
        children: [
          SizedBox(height: 100),
          Container(
              alignment: Alignment.topCenter,
              child: Container(
                color: Colors.lime,
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(3),
                child: Text(
                  fetchQuote(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              )),
        ],
      ),
    );
  }
}
