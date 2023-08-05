import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView_custom2(),));
}
class ListView_custom2 extends StatelessWidget {
  const ListView_custom2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Custom"),
      ),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) =>
          Text("hi")))
    );
  }
}