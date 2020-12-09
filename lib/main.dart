import 'package:flutter/material.dart';
import 'package:study_project/pages/search_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String name = "Vasya";
  double cytrus=90;
  int book = 3;
  double ocytrus = 90;
  bool ded = false;

  func(){
  setState(() {
    ocytrus = cytrus;
    cytrus=cytrus/book;
  });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        actions: [
          IconButton(icon: Icon(Icons.ac_unit_sharp ) , onPressed:()=> func())
        ],
      ),
      body: Center(
        child:Column(
          children: [
            Text(cytrus.toString()),
            Text(ocytrus.toString())
          ],
        ),
      ),
    );
  }
}
