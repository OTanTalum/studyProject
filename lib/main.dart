
import 'package:flutter/material.dart';
import 'package:study_project/pages/search_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
  String name = "KVV.project";
  List <String> listOfString = ["Ivan", "Petro", "Maria", "Andrei", "Katja", 'Aleg'];
  List <Widget> list =[];


  func(){
  setState(() {
    listOfString.forEach((element) {
      list.add(
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 200,
            width: 150,
            color: Colors.black12,
            child:  Padding(
              padding: const EdgeInsets.only(top: 85),
              child: Text(element,
                textAlign: TextAlign.center,
                style: GoogleFonts.vampiroOne(
                textStyle:TextStyle(
                  color: Colors.lightBlue,
              ),
                ),
              ),
            ),
          ),
        )
      );
    });
  //list.add(listOfString.where((element) => element.contains('a')));


  });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        actions: [
          IconButton(icon: Icon(Icons.add_box_sharp ) , onPressed:()=> func())
        ],
      ),
      body: Center(
        child:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(children: list,),
              // GestureDetector(
              //   onTap: ()=>func(),
              //   child: Icon(Icons.adb_outlined, size: 400,),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
