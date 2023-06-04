//import 'dart:ffi';

import 'dart:io';
import 'package:flutter_practice/ui_helper/extraFonts.dart';
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
        primarySwatch: Colors.orange,
        textTheme:const  TextTheme(
          headline1: TextStyle(fontSize: 24,fontFamily: "FontMain",color: Colors.black),
          subtitle1: TextStyle(fontSize: 12,color: Colors.red),
          subtitle2: TextStyle(fontSize: 12,color: Colors.red,fontFamily: "FontMain")

        )
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

  
  var namesArr = ["Arijit","Braj","Devashish","Khilrajsinh","Akshant","Tanmay","Kritika","Tejal","Risav Jha","Devasee","Devansh","Arya","Abhijit","Manish","Aditya","Aman","Vinati","Anjali","Nilay","Pushkar"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.orange,
        title: Text(widget.title,style: TextStyle(color: Colors.white),),


      ),
      body:
      ListView.builder(itemBuilder: (context,index){
          return Card(
            margin: EdgeInsets.all(8),
            elevation: 7,
            color: Color.fromRGBO(0, 223, 162, 1),
            shadowColor: Color.fromRGBO(0, 223, 162, 1),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/boy.png"),
                radius: 40,
              ),
              title: Text(namesArr[index],style: Theme.of(context).textTheme.headline1),
              subtitle: Text("Student"),
              trailing: InkWell(
                  child: Icon(Icons.edit),
                  onTap: (){
                    Fluttertoast.showToast(
                        msg: "Edit icon clicked",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  },
              ),
            ),
          );
        },
        itemCount: namesArr.length,
        


      )


    );
  }
}
