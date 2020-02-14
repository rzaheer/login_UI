import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'login App',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: Login(),
    );
  }
}



class Login extends StatefulWidget{

  _LoginState createState() => _LoginState();


}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin{

  TabController _tabController;



  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

 @override
 void dispose() {
   _tabController.dispose();
   super.dispose();
 }

@override
Widget build(BuildContext context) {
      
     return  MaterialApp(
       home: Scaffold(
      body: ListView ( 
     children: <Widget> [ 
   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
       child: Container(
        child: ListTile(
        leading: Icon(Icons.arrow_back),
                ),
              ),
          ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
      child: TabBar(
         indicatorWeight: 3.0,
        indicatorColor: Colors.red,
        labelColor: Colors.red,
        controller: _tabController,
        tabs:  [
          Tab( text:'LOGIN' ),
          Tab( text : 'REGISTER',), ]
      ),
      ),
  ),     
    
       Padding(
        padding: EdgeInsets.fromLTRB(75.0,12.0,12.0,12.0),
        child: Container(
child: ListTile(
title: Text('LOGIN TO YOUR ACCOUNT', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)
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
                leading: Icon(Icons.lock),
                title: Text('Password')
                ),
              ),
            ),
      Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              child: ListTile(
                trailing: Text('Forgot Password?', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)
              ),
              ),
      ),
      ),

       Padding(
         padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
      child: RaisedButton(
        color: Colors.red,
        onPressed: () {},
        padding: EdgeInsets.all(20.0),
        child: Text('LOGIN', style: TextStyle(color: Colors.white)),
      ), ),

        Padding (
       padding:EdgeInsets.symmetric(vertical: 12.0, horizontal: 123.0),
        child: Container( 
          child: Row(
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
        ]
        ),
       )
       );

     
           

}
}