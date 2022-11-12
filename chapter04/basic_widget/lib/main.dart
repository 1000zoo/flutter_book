import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }

}

class MyHomePage extends StatelessWidget {

  const String title = "Column";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: myCol()
    );
  }

  Column myCol() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        blueContainer(100),
        redContainer(100),
        greenContainer(100)
      ],
    );
  }

  Row myRow() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        blueContainer(100),
        redContainer(100),
        greenContainer(100)
      ],
    );
  }

  Stack myStack() {
    double size = 100;
    return Stack(
      children: [
        blueContainer(size -= 20),
        redContainer(size -= 20),
        greenContainer(size -= 20)
      ],
    );
  }

  Container blueContainer(double size) {
    return Container(
      color: Colors.blue,
      width: size,
      height: size,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
    );
  }
  Container redContainer(double size) {
    return Container(
      color: Colors.red,
      width: size,
      height: size,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
    );
  }
  Container greenContainer(double size) {
    return Container(
      color: Colors.green,
      width: size,
      height: size,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
    );
  }
}
