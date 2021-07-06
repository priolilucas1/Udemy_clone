import 'package:flutter/material.dart';
import 'package:udemy_clone/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 72,
      title: Row(
        children: [
          Container(
            height: 35,
            child: Image.asset('images/udemy.png'),
          ),
          const SizedBox(width: 32),
          WebAppBarResponsiveContent(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
          SizedBox(width: 12),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              'Fazer Login',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              side: BorderSide(color: Colors.white, width: 2),
              padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 17),
            ),
          ),
          SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Cadastre-se',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 17),
            ),
          ),
        ],
      ),
    );
  }
}
