import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
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
        title: Text("list view test"),
      ),
      body: myList(),
    );
  }
}

ListView myList() {
  return ListView(
    scrollDirection: Axis.vertical,
    children: [
      getListTile("Home", Icons.home),
      getListTile("Event", Icons.event),
      getListTile("Camera", Icons.camera)
    ],
  );
}

ListTile getListTile(String name, IconData type) {
  return ListTile(
    leading: Icon(type),
    title: Text(name),
    trailing: Icon(Icons.navigate_next),
    onTap: () {},
  );
}