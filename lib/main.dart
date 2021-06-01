import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ui/views/cartpage.dart';
import 'ui/views/homepage.dart';
import 'core/Providers/cartProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        routes: {
          '/home': (context) => HomePage(),
          '/cart': (context) => CartPage(),
        },
        // home: HomePage(),
      ),
    );
  }
}
