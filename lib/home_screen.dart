import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: const Color.fromRGBO(53, 187, 254, 1),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Você está na Home Screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
