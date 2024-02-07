import 'package:flutter/material.dart';

class UserSetupScreen extends StatefulWidget {
  @override
  _UserSetupScreen createState() => _UserSetupScreen();
}

class _UserSetupScreen extends State<UserSetupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vamos começar"),
      ),
      body: const Center(
        child: Text("Teste"),
      ),
    );
  }
}