import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:project_june/home.dart';
import 'package:project_june/stateful%20login%20with%20validation.dart';
void main(){
  runApp(MaterialApp(home: registration(),));
}
class registration extends StatefulWidget{
  @override
  State<registration> createState() => _registrationState();

}

class _registrationState  extends State<registration>{
  var formkey = GlobalKey<FormState>();
  bool passvisibility = true;
  bool passvisibility2 =true;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
      ),
      body: Form(
        key: formkey,
        child: Column(
        children: [
          Text("Register here",style: TextStyle(fontSize: 50,color: Colors.red),),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Name",
                  labelText: "Your Full Name",
                  helperText: "First letter should be capital",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(15.0),
          //   child: TextFormField(
          //     decoration: InputDecoration(
          //         prefixIcon: Icon(Icons.phone),
          //         hintText: "Phone Number",
          //         labelText: "Phone Number",
          //         helperText: "Must contain 10 digits",
          //         border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(50))),
          //     validator: (phone) {
          //       if (phone!.isEmpty || phone.length==9) {
          //         return "Fields are empty or invalid";
          //       } else {
          //         return null;
          //       }
          //     },
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.people),
                  hintText: "Username",
                  labelText: "User Name",
                  helperText: "user name must be an email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
              validator: (uname) {
                if (uname!.isEmpty || !uname.contains('@')) {
                  return "Fields are empty or invalid";
                } else {
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0,
                right: 15,
                bottom: 15),
            child: TextFormField(
              obscuringCharacter: '*',
              obscureText: passvisibility,
              decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      if(passvisibility == true){
                        passvisibility = false;
                      }else{
                        passvisibility = true;
                      }
                    });
                  }, icon: Icon(passvisibility == true
                      ?Icons.visibility_off_sharp
                      :Icons.visibility)) ,
                  prefixIcon: Icon(Icons.key),
                  hintText: "PassWord",
                  labelText: "Password",
                  helperText: "password must contain greater than 8 characters",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
              validator: (pass) {
                password =pass;
                if (pass!.isEmpty || pass.length < 6) {
                  return "Fields are empty or password length must be >=8";
                }else{
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0,
                right: 15,
                bottom: 15),
            child: TextFormField(
              obscuringCharacter: '*',
              obscureText: passvisibility2,
              decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      if(passvisibility2 == true){
                        passvisibility2 = false;
                      }else{
                        passvisibility2 = true;
                      }
                    });
                  }, icon: Icon(passvisibility2 == true
                      ?Icons.visibility_off_sharp
                      :Icons.visibility)) ,
                  prefixIcon: Icon(Icons.key),
                  hintText: "Conform PassWord",
                  labelText: "Conform Password",
                  helperText: "password must contain greater than 8 characters",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
              validator: (cpass) {
                if (cpass!.isEmpty || cpass != password ) {
                  return "Fields are empty or password does not match ";
                }else{
                  return null;
                }
              },
            ),
          ),
          ElevatedButton(onPressed: () {
            final valid = formkey.currentState!.validate();
            if (valid) {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Login2()));
            } else {
              Fluttertoast.showToast(
                  msg: "Invalid Username or Password",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.TOP,
                  // timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            }
          },
              child: const Text("Login")),
        ],
      ),
      ),
    );
  }
}