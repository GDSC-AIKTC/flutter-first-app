import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // state variable
  int counter = 0;
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    // int counter = 0;
    return MaterialApp(
      title: 'My First App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star),
                  Center(
                    child: Text(
                      "$counter",
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
              ElevatedButton(
                onPressed: () {
                  // rebuild this widget
                  // by calling build method
                  setState(() {
                    counter += 1;
                  });

                  print("Hello from text butto");
                },
                child: Text("Click me"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: checkboxValue,
                    onChanged: (value) {
                      print(value);
                      checkboxValue = value!;
                      setState(() {});
                    },
                  ),
                  Text("Agree to terms and conditions!")
                ],
              )
            ],
          )),
    );
  }
}
