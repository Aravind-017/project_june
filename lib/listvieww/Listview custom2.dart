import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView_custom2(),));
}
class ListView_custom2 extends StatelessWidget {
  const ListView_custom2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Custom"),
      ),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) =>
          Text("hi"),
          childCount: 10)),
    );
  }
}