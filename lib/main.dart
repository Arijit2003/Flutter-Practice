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

        // Container(
        //     width: 250,
        //     height: 250,
        //     color: Colors.yellow,
        //     child: const Center(
        //       child:
        //       // Text(
        //       //     "Hello My Friends. I am Arijit",
        //       //     style: TextStyle(
        //       //     fontSize: 22,
        //       //     color: Colors.black,
        //       //     fontWeight: FontWeight.bold,
        //       //     backgroundColor: Colors.deepOrange
        //       //   )
        //
        //       ) ,
        //     )
        // TextButton(
        //   child: const Text("Click me",
        //   style:
        //     TextStyle(
        //       fontSize: 20,
        //       color: Colors.black,
        //       fontWeight: FontWeight.w900
        //     ),),
        //   onPressed: (){
        //     print("Button Clicked");
        //     //String? a=stdin.readLineSync();
        //   },
        //   onLongPress: (){
        //     print("Button is long pressed");
        //   },
        // ),
        // ElevatedButton(
        //   child: const Text("Elevated Button",style: TextStyle(
        //     fontSize: 26,
        //     fontWeight: FontWeight.bold,
        //     color: Colors.amberAccent
        //   ),),
        //   onPressed: (){
        //     print("Elevated Button");
        //   },
        //   onLongPress: (){
        //     print("Elevated button long pressed");
        //   },
        // )
        // OutlinedButton(
        //   child: const Text("Outlined Button", style: TextStyle(
        //     fontWeight: FontWeight.bold,
        //     fontSize: 24
        //   ),),
        //   onPressed: (){
        //     print("Outline Button pressed");
        //   },
        //   onLongPress: (){
        //     print("Outlined button long pressed");
        //   },
        // )
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(

              child: Image.asset("assets/images/laptop.jpg"),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text("HP 15 11th Gen Intel Core i5 Processor 15.6 inches(39.6cm)\nFHD Laptop (8GB/512GB SSD +32GB Intel Optane/Windows 10\nHome/MS Office/Jet Black/1.69 Kg), 15s-fq2071TU",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
                InkWell(
                  child: Text("\n\nVisit the HP Store\n\n",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w100,color: Colors.blue)),
                  onTap: (){
                    print("tapped");
                    Fluttertoast.showToast(
                        msg: "Tapped",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 5,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  },
                  onLongPress: (){
                    print("long tapped");
                    Fluttertoast.showToast(
                        msg: "Long Tapped",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 5,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  },
                  onDoubleTap: (){
                    print("Double tapped");
                    Fluttertoast.showToast(
                        msg: "Double tapped",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 5,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  },
                )

              ],
            )
          ],
        )


    );
  }
}
