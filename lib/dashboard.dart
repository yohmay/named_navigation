import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Named Navigation"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage('assets/usuario.png'),
              ),
              accountName: Text("Usuário"),
              accountEmail: Text("usuario.primeiro@dominio.com.br"),
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text("Exit"),
              onTap: () => onButtonSairClicked(context),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("First Access"),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet_sharp),
              title: Text("Document"),
            ),
            ListTile(
                leading: Icon(Icons.add),
                title: Text("Begin Session")
            ),
          ],
        ),
      ),
    );
  }

  void onButtonSairClicked(BuildContext context) {
    Navigator.of(context).pushReplacementNamed("/login");
  }
}