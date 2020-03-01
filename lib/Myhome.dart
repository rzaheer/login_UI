import 'package:flutter/material.dart';
import './favourites.dart' as fav;

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HOME'),),
      body: Container(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          heroTag: "btn1",
          onPressed: () => {} ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                   icon: Icon(Icons.home),
                   onPressed: ()=> {},
                ),
                 IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => fav.Favourite()));},
                  
                ),
                IconButton(
                  onPressed: () {
                  
                  },
                  icon: Icon(Icons.shopping_cart),
                ),
                IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.account_circle),
                ),
              ],
    )
        )
    );
}
}