import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Column(
          children: [
            Align(alignment: Alignment.center),
            SizedBox(height: 40),
            Text(
              "How are you feeling?",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/quote');
                },
                child: Text(
                  "Happy 😁",
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/joke');
                },
                child: Text(
                  "Sad 😥",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ));
  }
}
