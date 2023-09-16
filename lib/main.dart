import 'package:flutter/material.dart';
import 'package:shop_ui/pages/home_page.dart';
import 'package:shop_ui/pages/homework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Homework_apple(),
      routes: {
        Homework_apple.id: (context) => Homework_apple(),
        Home_page.id: (context) => Home_page(),
      },
    );
  }
}
