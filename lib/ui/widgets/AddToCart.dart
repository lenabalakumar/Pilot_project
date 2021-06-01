import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/Providers/cartProvider.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({Key key}) : super(key: key);

  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int _quantity = 0;

  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Align(
        child: Container(
          width: 90,
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (_quantity < 1) {
                    } else {
                      _quantity--;
                    }
                  });
                },
                child: Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: ThemeData().primaryColor.withOpacity(.5),
                  ),
                  child: Center(
                    child: Text('-'),
                  ),
                ),
              ),
              Text(
                _quantity.toString(),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _quantity++;
                    print(_quantity);
                  });
                },
                child: Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: ThemeData().primaryColor.withOpacity(.5),
                  ),
                  child: Center(
                    child: Text('+'),
                  ),
                ),
              ),
            ],
          ),
        ),
        alignment: Alignment.bottomLeft,
      ),
    );
  }
}


