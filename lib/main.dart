import 'dart:collection';

import 'package:flutter/material.dart';

void main() {
  runApp(const _MyApp());
}
class _MyApp extends StatefulWidget {
  const _MyApp({Key? key}) : super(key: key);

  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  int count=1;
  void fun(){
    if(count<5) {
      count++;
    }
    else{
      count=1;
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: const Center(
            child: Text('Ask Me Anything',
            style: TextStyle(
              color: Colors.white,
            ),),
          ),
        ),
        body: Stack(
          children: <Widget>[
            TextButton(onPressed: (){
            setState(() {
              fun();
             }
            );
            },
              child: Center(child: Image.asset('Images/ball$count.png')),
            ),
          ],

        ),
      ),
    );
  }
}
