import 'package:flutter/material.dart';
import 'package:shopping_app_u/pages/cart_page.dart';
import 'package:shopping_app_u/widgets/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<Widget> pages = const [
    ProductList(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,

        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
        selectedItemColor: Colors.amber[800], // Set color for selected item
        unselectedItemColor: Colors.grey, // Optionally set color for unselected items
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_sharp), label: ""),
        ],
      ),
    );
  }
}