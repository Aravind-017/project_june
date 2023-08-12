import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_june/Gridex/grid%20wrk.dart';
import 'package:project_june/contact.dart';
import 'package:project_june/login.dart';
import 'package:project_june/registration.dart';
import 'package:project_june/splash2.dart';

void main(){
  runApp(MaterialApp(home:TabEx() ,));
}
class TabEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("WhatsApp"),
            actions: [
              Icon(Icons.search),
              Icon(Icons.camera_alt),
              PopupMenuButton(itemBuilder: (context){
                return[
                  PopupMenuItem(child: Text("Settings"))
                ];
              })
            ],
            bottom: TabBar(
                // indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                labelPadding: EdgeInsets.zero,
                tabs: [
              SizedBox(
                  width: MediaQuery.of(context).size.width*.1,
                  child: Center(child: FaIcon(FontAwesomeIcons.peopleGroup))),
              SizedBox(
                  width: MediaQuery.of(context).size.width*.3,
                  child: Center(child: Text('Chat'))),
              SizedBox(
                  width: MediaQuery.of(context).size.width*.3,
                  child: Center(child: Text('Status'))),
              SizedBox(
                  width: MediaQuery.of(context).size.width*.3,
                  child: Center(child: Text('Calls')))
            ]),
          ),
          body: TabBarView(children: [
            shrine(),
            contact(),
            LoginPage(),
            registration(),
          ]),
          // body: TabBarView(children: [
          //   Center(child: Text("Community")),
          //   Center(child: Text("Chat")),
          //   Center(child: Text("Status")),
          //   Center(child: Text("Call")),
          // ],),
        ));
  }
}
