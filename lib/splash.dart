import 'package:flutter/material.dart';
void main(){
  //to execute the program main is mandatory
  // attach wideget tree to the UI
  runApp(MaterialApp(
    //default theme of our app
    home:MysplashPage(), // initial page
  ));
}
class MysplashPage extends StatelessWidget{
  //this page does not undergo any state change
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar:AppBar(title: Text("My Splash Page"),)
    );
  }
}