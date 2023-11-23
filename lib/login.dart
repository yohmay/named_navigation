import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.symmetric(vertical: 64.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/login.png', height: 64),
              const SizedBox(height: 20),
              const TextField(decoration: InputDecoration(labelText: "E-mail")),
              const TextField(decoration: InputDecoration(labelText: "Password")),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text("Login"),
                onPressed: () => onButtonEntrarClicked(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onButtonEntrarClicked(BuildContext context) {
    Navigator.of(context).pushReplacementNamed("/dashboard");
  }
}