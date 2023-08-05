import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: ListView1()));
}
class ListView1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              "Select your Food From the Menu!!",
              style: GoogleFonts.pacifico(
                fontSize: 30,color: Colors.green,fontWeight: FontWeight.bold),
              ),
            ),

          Card(
          child: ListTile(title: Text("apple"),
            subtitle: Text("\$190"),
            trailing: Icon(Icons.shopping_cart),
            leading: Image.asset("assets/icons/eye.png"),
          ),
          ),
          const Card(
            child: ListTile(title: Text("banana"),
              subtitle: Text("\$80"),
              trailing: Icon(Icons.shopping_cart),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://t3.ftcdn.net/jpg/04/59/27/88/360_F_459278894_92eSlejnR7NSwJRCbVyy9ZZibSmjbF8q.jpg")),
            ),
          ),
          Card(
            child: ListTile(title: Text("donut"),
              subtitle: Text("\$75"),
              trailing: Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/donut.png"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("HamBurger"),
              subtitle: Text("\$190"),
              trailing: Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/hamburger.png") ,
            ),
          ),
          Card(
            child: ListTile(title: Text("mango"),
              subtitle: Text("\$115"),
              trailing: Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/mango.png"),
            ),
          ),
        ],
      ),
    );
  }
}
