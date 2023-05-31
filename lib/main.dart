//import 'dart:ffi';
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

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body:
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue.shade50,
          child: Center(
            child: Container(
              width: 150,
              height: 150,

              decoration: BoxDecoration(
                color: Colors.blueGrey,
                // borderRadius:
                // //BorderRadius.circular(11),
                // //BorderRadius.all(Radius.elliptical(10, 20))
                // const BorderRadius.only(topLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
                border: Border.all(
                  width: 2,
                  color: Colors.black87,
                ),

                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 17.0,
                    blurRadius: 14,

                  )
                ],
                shape: BoxShape.circle




              ),
            ),
          ),
        )


    );
  }
}
