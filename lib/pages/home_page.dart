import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:ecommerce_app/widget/bottom_nav.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current_index = 0;

  final _pages = [ShopPage(), CartPage()];

  void updatingSelectedIndexInBottomNav(int value) {
    setState(() {
      current_index = value;
    });
  }

  @override
  Widget build(buildContext) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],

        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
        drawer: Drawer(
          backgroundColor: Colors.grey[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(  
                children: [
              Image.asset('images/logo.png'),
              TextButton.icon(
                onPressed: () {},
                label: Text(
                  'Home',
                  style: TextStyle(color: Colors.black87, fontSize: 16 ),
                ),
                icon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.home, color: Colors.black87, size: 21),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                label: Text(
                  'About',
                  style: TextStyle(color: Colors.black87, fontSize: 16),
                ),
                icon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.info, color: Colors.black87, size: 21),
                ),
              ),] ),
              
                TextButton.icon(
                onPressed: () {},
                label: Text(
                  'Logout',
                  style: TextStyle(color: Colors.black87, fontSize: 16),
                ),
                
                icon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.logout, color: Colors.black87, size: 21),
                ),

                
                 ),

            ],
          ),
        ),

        body: _pages[current_index],

        bottomNavigationBar: BottomNav(
          onTap: (value) {
            updatingSelectedIndexInBottomNav(value);
          },
          current_index: current_index,
        ),
      ),
    );
  }
}
