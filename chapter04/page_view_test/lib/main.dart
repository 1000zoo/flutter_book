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
        title: Text("Page View Test"),
      ),
      body: getPageView(),
    );
  }
}

PageView getPageView() {
  const double size = 100;
  return PageView(
    children: [
      getContainer(Colors.yellow, size),
      getContainer(Colors.red, size),
      getContainer(Colors.green, size),
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