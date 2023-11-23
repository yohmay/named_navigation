import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter - Named Navigation',
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
