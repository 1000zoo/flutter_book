import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'scroll test',
      theme: ThemeData(
        primarySwatch: Colors.red,
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
        title: Text("scroll test")
      ),
      body: myScroll(),
    );
  }

}

final items = List.generate(100, (index) => index).toList();

SingleChildScrollView myScroll(){

  return SingleChildScrollView(
    child: ListBody(
      children: items.map((i) => Text("$i")).toList(),
    ),
  );
}
