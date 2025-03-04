import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {

void Function(int)? onTap;
int  current_index;

  BottomNav({super.key,required this.onTap,required this.current_index});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: current_index,
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.black45,
      elevation: 0,
      onTap:onTap,
      items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Shop'),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart')]
    );
  }
}