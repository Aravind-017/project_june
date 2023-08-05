import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView_custom(),));
}
class ListView_custom extends StatelessWidget {
  const ListView_custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Custom"),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
            List.generate(10, (index) => Text("Hello"))),),
    );
  }
}
