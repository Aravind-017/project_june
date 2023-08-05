import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listview_Seperated(),));
}
class Listview_Seperated extends StatelessWidget {
  const Listview_Seperated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Separated"),),
      body: ListView.separated(itemBuilder: (context,index){
        return const SizedBox(
          height:50,
          child: Card(
          child: Align(
              alignment:Alignment.centerLeft,
              child:Text("January")),
        ),
        );

      },
          separatorBuilder: (context,index){
        if(index % 4 ==0){
          return const Card(
            color: Colors.red,
            child: Text("Advertisement"),
          );
        }else{
          return const SizedBox();
        }

      }, itemCount: 30),
    );
  }
}
