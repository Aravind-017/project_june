import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView2(),));
}
class ListView2 extends StatelessWidget {
var name= ["food1","food2","food3","food4","food5"];
var  image=["assets/icons/eye.png",
"assets/icons/icon.png",
"assets/icons/eye.png",
"assets/icons/icon.png",
"assets/icons/eye.png"];
var price=[200,300,400,500,600];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("ListView2"),
      actions: [
        Icon(Icons.camera_alt),
        SizedBox(width: 20,),
        Icon(Icons.search),
        SizedBox(width: 20,),
        PopupMenuButton(itemBuilder: (context){
          return[
            PopupMenuItem(child: Text("Settings")),
            PopupMenuItem(child: Text("Profile")),
            PopupMenuItem(child: Text("BroadCast")),
            PopupMenuItem(child: Text("Help")),
          ];
        })
        ],
      ),
      body: ListView(
        children: List.generate(5, (index) => Card(
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text("\$ ${price[index]}"),
            leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
            trailing: const Wrap(
              direction: Axis.vertical,
                children: [
                  Text("12:30"),
              CircleAvatar(
                minRadius: 4,
                maxRadius: 10,
                backgroundColor: Colors.green,
                child: Text("2"),
              )
              // Icon(Icons.message),
              // SizedBox(width: 20,),
              // Icon(Icons.phone),
            ]),
          ),
        )),
      ),
    );
  }
}
