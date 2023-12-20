import 'package:flutter/material.dart';
import 'package:store_app/presentation/screens/home_page.dart';
import 'package:store_app/presentation/screens/update_product_screen.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
