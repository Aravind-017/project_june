import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: contact()));
}
class contact extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(title: Text("Jishnu"),
                subtitle: Text("9400349282"),
                trailing: Icon(Icons.phone),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o="),
                )),
          ),
          Card(
            child: ListTile(title: Text("Akshay"),
                subtitle: Text("6238010372"),
                trailing: Icon(Icons.phone),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/jao.jpg"),
                )),
          ),
          Card(
            child: ListTile(title: Text("Rijo"),
                subtitle: Text("7562456321"),
                trailing: Icon(Icons.phone),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o="),
                )),
          ),
          Card(
            child: ListTile(title: Text("Parthan"),
                subtitle: Text("8645961235"),
                trailing: Icon(Icons.phone),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/car.jpg"),
                )),
          ),
          Card(
            child: ListTile(title: Text("Akhil"),
                subtitle: Text("9645531284"),
                trailing: Icon(Icons.phone),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o="),
                )),
          ),
          Card(
            child: ListTile(title: Text("Gokul"),
                subtitle: Text("7752456312"),
                trailing: Icon(Icons.phone),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o="),
                )),
          ),
        ],
      ),
    );
  }
}
