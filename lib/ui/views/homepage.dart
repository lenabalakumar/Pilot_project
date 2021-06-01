import 'package:flutter/material.dart';
import 'HomepageBody.dart';
import 'cartpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white12,
        actions: <Widget>[
          MaterialButton(
            child: Icon(
              Icons.shopping_cart_rounded,
              size: 30.0,
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
      body: HomepageBody(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
        elevation: 0,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons
                  .home_filled, /*color: index == 0 ? Colors.blue : Colors.black54*/
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons
                  .favorite, /*color: index == 1 ? Colors.blue : Colors.black54*/
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons
                  .person, /* color: index == 2 ? Colors.blue : Colors.black54*/
            ),
            label: 'Profile',
          ),
        ],
        // selectedLabelStyle: TextStyle(color: Colors.amber),
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
