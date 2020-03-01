import 'package:flutter/material.dart';
import './login.dart' as login;
import './register.dart' as register;


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant UI Kit',
      theme: ThemeData(
       // primarySwatch: Colors.white,
      ),
      home: MyTabs(),
    );
  }
}

class MyTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabsState();
  }
}

class TabsState extends State<MyTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2 , child: Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,

      bottom: TabBar(
        unselectedLabelColor: Colors.grey,
        indicatorWeight: 3.0,
        indicatorColor: Colors.red,
        labelColor: Colors.red,
        tabs: [
        Tab(text:'LOGIN'),
        Tab(text: 'REGISTER'),
      ]), 
      ),
      body: TabBarView(
       children: [
         login.Login(),
         register.Register(),
       ]),
    ));
  }

}


       