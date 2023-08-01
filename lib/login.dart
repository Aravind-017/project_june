import 'package:flutter/material.dart';
import 'package:project_june/home.dart';

class LoginPage extends StatelessWidget{

  String uname = "admin";
  String pwd = "abc123";

  TextEditingController usercontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(20.0)),
            TextField(
              controller: usercontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.people),
                hintText: "UserName",
                helperText: "User name must be an email",
                labelText: "User Name",
              ),
            ),
            TextField(
              controller: passcontroller,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon:Icon(Icons.visibility_off_sharp),
                hintText: "Password",
                helperText: "password must be a strong",
                labelText: "Password"),
              ),

            ElevatedButton(onPressed: () {

              if(uname == usercontroller.text &&  pwd == passcontroller.text) {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => HomePage()));
                usercontroller.text="";
                passcontroller.text="";
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Username or Password")));
              }
            }, child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}