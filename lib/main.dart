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

  
  var namesArr = ["Arijit","Braj","Devashish","Khilrajsinh","Akshant","Tanmay","Kritika","Tejal"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body:
      Padding(
        padding: EdgeInsets.only(top: 10,bottom: 10),
        child:
        ListView.separated(itemBuilder: (context,index){
           return  ListTile(
             leading:  Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(40),
                   color: Colors.black,
                 ),
                 child: Image.asset("assets/images/person.png",width: 80,height: 80,),
             ),
             title: Text(namesArr[index]),
             subtitle: const Text("VITIAN"),
             trailing: const Icon(Icons.add),
           );
        },
          itemCount: namesArr.length,
          separatorBuilder: (context,index){
            return Divider(color: Colors.black, thickness: 2,height: 100,);
          },

        ),
      )


    );
  }
}
