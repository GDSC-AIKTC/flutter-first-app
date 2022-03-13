import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:const [
            Icon(Icons.star),
            Center(
              child: Text("My First App",
              style: TextStyle(
                fontSize: 30.0,
                wordSpacing: 10,
                color: Colors.deepOrange,
                letterSpacing: 5,
                backgroundColor: Colors.yellow),
                ),
            ),
            Icon(Icons.star)
          ],
        ),
      ),
    );
  }
}

