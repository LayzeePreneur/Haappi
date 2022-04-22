import 'package:flutter/material.dart';
import 'package:haappi/content/home.dart';
import 'package:haappi/content/joke.dart';
import 'package:haappi/content/quote.dart';
import 'package:haappi/login.dart';
import 'content/joke.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
      routes: {
        '/home': (_) => const HomePage(),
        '/joke': (_) => Joke(),
        '/quote': (_) => Quote(),
      },
    );
  }
}
