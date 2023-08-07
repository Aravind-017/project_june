import 'package:flutter/material.dart';

class GrideView3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView Count"),),
      body: GridView.count(crossAxisCount: 3,
      children: List.generate(15, (index) => Card(
        child: Center(
          child: Text("Hello"),
        ),
      )),
    ),
    );
  }
}
