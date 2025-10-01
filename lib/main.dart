import 'package:flutter/material.dart';
import 'package:note_app/screens/home_page.dart';
import 'package:note_app/screens/update_product.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => const HomePage(),
        UpdateProductPage.id: (context) => const UpdateProductPage()
      },
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
    );
  }
}
