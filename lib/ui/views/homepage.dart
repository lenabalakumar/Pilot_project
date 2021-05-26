import 'package:flutter/material.dart';
import 'cartpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white12,
        leading: MaterialButton(
          child: Icon(
            Icons.person,
            size: 30.0,
          ),
          onPressed: () {},
        ),
        title: Center(
          child: Icon(Icons.celebration, color: Colors.amber, size: 30.0,)
        ),
        actions: <Widget>[
          MaterialButton(
            child: Icon(
              Icons.shopping_bag,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CartPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
