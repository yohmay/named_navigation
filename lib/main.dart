import 'package:flutter/material.dart';
import 'package:named_navigation/dashboard.dart';
import 'package:named_navigation/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter - Navegação Nomeada',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        cardColor: Colors.black12,
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginScreen(),
        "/dashboard": (context) {
          return DashboardScreen();
        }
      },
    );
  }
}