import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: StackEx(),));
}
class StackEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Example"),),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://images.unsplash.com/photo-1691253275919-72d7ad50e251?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0M3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60")),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 10,
              child: Container(
                height: 50,
                width: 120,
                child: Text("ARAVIND SHAJI",
                style: TextStyle(
                fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              left: 180,
                bottom: 60,
                child: Container(
                  height:50,
                  width: 150,
                  child: Text("4563 6352 7485",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                ),
            )
          ],
        ),
      ),
    );
  }
}
