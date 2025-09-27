import 'package:flutter/material.dart';
import 'package:note_app/screens/home_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {HomePage.id: (context) => const HomePage()},
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
    );
  }
}
