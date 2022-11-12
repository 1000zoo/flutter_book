import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("grid view test"),
      ),
      body: getGridView(),
    );
  }
}

GridView getGridView() {
  return GridView.count(
    crossAxisCount: 2,
    children: [
      getContainer(Colors.red, 100),
      getContainer(Colors.blue, 100),
      getContainer(Colors.green, 100),
      getContainer(Colors.brown, 100),
      getContainer(Colors.pink, 100),
      getContainer(Colors.grey, 100),
    ],
  );
}

Container getContainer(MaterialColor colors, double size) {
  return Container(
    color: colors,
    width: size,
    height: size,
    padding: const EdgeInsets.all(8.0),
    margin: const EdgeInsets.all(8.0),
  );
}