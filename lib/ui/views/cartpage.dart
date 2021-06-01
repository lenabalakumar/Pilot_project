import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/Providers/cartProvider.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: MaterialButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Consumer<CartProvider>(
        builder: (context, cart, child) {
          return ListView.builder(itemCount: cart.basketItem.length,itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text('${cart.basketItem[index].productName}'),
                trailing: IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {},
                ),
              ),
            );
          });
        },
      ),
    );
  }
}
