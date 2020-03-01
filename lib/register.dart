import 'package:flutter/material.dart';

class Register extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return RegState();
  }

}
class RegState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: ListView( 
      children: <Widget> [
        Padding(
        padding: EdgeInsets.fromLTRB(75.0,12.0,12.0,12.0),
        child: Container(
child: ListTile(
title: Text('CREATE AN ACCOUNT', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)
              ),
              ),
      ),
       ),
    Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Username')
                ),
              ),
          ),
      Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('Email')
                ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.lock),
                title: Text('Password')
                ),
              ),
          ),
          Padding(
         padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
      child: RaisedButton(
        color: Colors.red,
        onPressed: () {},
        padding: EdgeInsets.all(20.0),
        child: Text('REGISTER', style: TextStyle(color: Colors.white)),
      ), ),
      Padding (
       padding:EdgeInsets.symmetric(vertical: 12.0, horizontal: 60.0),
        child: Container( 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
       FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {} ,  
        child: CircleAvatar(backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/5/54/Google_Now_logo.webp/300px-Google_Now_logo.webp.png'),),

     ),
     FloatingActionButton(
          backgroundColor: Colors.blue[800],
          onPressed: () {} , 
          child: CircleAvatar(backgroundImage: NetworkImage('https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-facebook-circle-256.png'),),
     ), 
   ]
     ),
        ),
        ),
      ],
    ),
      

      );
  }
}