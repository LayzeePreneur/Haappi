import 'package:flutter/material.dart';
import "dart:math";

class Joke extends StatelessWidget {
  //..
  fetchJoke() {
    var jokes = [
      "what do you call a fly with no wings? \na walk. ",
      "What do you call a teacher with no arms, no legs, and no body? The Head...  ",
      " Q: Why should you never iron a four leaf clover? A: You should never press your luck ",
      "What's ET short for? Because he's got little legs. ",
      " Q Z what did the grape say when the elephant trod on it  A Z Nothing, it just gave a little wine",
      " There were two cows in a field.  One said \"moo\", the other one said \"I was going to say  that ",
      "What?s brown and sticky? A stick ",
      " What's brown and sticky?  A: A stick.",
      "A man walks into a chip and asks for fish and chips twice please.    The man behind the counter says \"I heard you the first time\" ",
      "did the bird say as it flew over      Cheap Cheap",
      " George Howard, the man famous for writing the Hokey Polky died last week.  They had a horrible time at the funeral parlor, first they put his left leg in....",
      " Where do sheep get their haircut? At the BahZBahZShop.",
      "  random joke",
      " a random joke ",
    ];

    var element = getRandomElement(jokes);
    // print(element);
    return element;
  }

  getRandomElement<T>(List<T> list) {
    final random = new Random();
    var i = random.nextInt(list.length);
    return list[i];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("A joke for you")),
      body: Column(
        children: [
          SizedBox(height: 100),
          Container(
              alignment: Alignment.topCenter,
              child: Container(
                color: Colors.orangeAccent,
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(3),
                child: Text(
                  fetchJoke(),
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
