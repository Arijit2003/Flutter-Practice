import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Practice'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:
        ListView(
          scrollDirection: Axis.vertical,
          itemExtent: 50,
          children: const [
            Text("One",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Two",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            Text("Three",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            Text("Four",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            Text("Five",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Six",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Seven",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            Text("Eight",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Nine",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Ten",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Eleven",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Twelve",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Thirteen",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ],
        )


    );
  }
}
