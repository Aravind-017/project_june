import 'dart:async';

import 'package:flutter/material.dart';

import 'package:project_june/login.dart';
void main(){
  runApp(MaterialApp(home: Splash3(),));
}

class Splash3 extends StatefulWidget{

  @override
  State<Splash3> createState() => _Splash3State();

}

class _Splash3State extends State<Splash3> {
  @override
  void initState(){
    Timer(Duration(seconds:1),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child:Image.asset("assets/icons/eye.png"),
      ),
    );
  }
}