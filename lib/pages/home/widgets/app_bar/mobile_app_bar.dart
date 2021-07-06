import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        height: 35,
        child: Image.asset('images/udemy.png'),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        )
      ],
    );
  }
}
