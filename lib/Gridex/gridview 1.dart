import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: GridView1(),));
}
class GridView1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("My GridView"),),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: List.generate(15, (index) => Card(
        color: Colors.yellow,
        child: Center(
          child: Icon(Icons.ac_unit_rounded),
        ),
      )),),
    );
  }
}
