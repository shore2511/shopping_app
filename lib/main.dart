

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app_u/providers/cart_provider.dart';
import 'package:shopping_app_u/pages/product_details_page.dart';
import 'package:shopping_app_u/global_variable.dart';
import 'package:shopping_app_u/pages/home_page.dart';

import 'pages/home_page.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping App',
        theme: ThemeData(
          fontFamily: 'lato',
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(254, 206, 1, 1)),
          primaryColor: const Color.fromRGBO(254, 206, 1, 1),
      
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.black
            )
          ),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1)
          ),
            textTheme: const TextTheme(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
              titleMedium: TextStyle(
                 fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              bodySmall: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              )
            ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}

