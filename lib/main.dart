import 'package:flutter/material.dart';
import 'home_screen.dart';  

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Meu app',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(53, 187, 254, 1),
          centerTitle: true,
        ),
        body: const LoginScreen(),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const Text(
              'Bem Vindo!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(53, 187, 254, 1),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Sign in',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User name',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Forgot Password?',
              style: TextStyle(color: Color.fromRGBO(37, 33, 243, 1)),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()), 
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Does not have account?"),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      color: Color.fromRGBO(37, 33, 243, 1),
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
