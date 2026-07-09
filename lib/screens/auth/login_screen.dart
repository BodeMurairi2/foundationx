import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome Back", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            TextField(decoration: const InputDecoration(labelText: "Email")),
            const SizedBox(height: 16),
            TextField(obscureText: true, decoration: const InputDecoration(labelText: "Password")),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => context.go('/home'),
              child: const Text("Login"),
            ),
            TextButton(onPressed: () => context.go('/register'), child: const Text("Create Account")),
          ],
        ),
      ),
    );
  }
}