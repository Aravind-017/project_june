import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: LotAnim(),));
}
class LotAnim extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lottie"),),
      body: ListView(
        children: [
         SizedBox(
         height:40,
             width
             Lottie.asset("assets/animation/batman.json")),
          Lottie.network("https://lottie.host/15b59a05-d263-41ee-ba7e-087674aa2442/QFj4zhlcPz.json")
        ],
      ),
    );
  }
}
