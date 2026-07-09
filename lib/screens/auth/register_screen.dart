import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  String name = '', email = '', password = '', grade = 'JSS 1', school = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Create Account")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(decoration: const InputDecoration(labelText: "Full Name"), onChanged: (v) => name = v),
              TextFormField(decoration: const InputDecoration(labelText: "Email"), onChanged: (v) => email = v),
              TextFormField(obscureText: true, decoration: const InputDecoration(labelText: "Password"), onChanged: (v) => password = v),
              TextFormField(decoration: const InputDecoration(labelText: "School"), onChanged: (v) => school = v),
              DropdownButtonFormField<String>(
                initialValue: grade,
                items: ['JSS 1', 'JSS 2', 'JSS 3', 'SSS 1', 'SSS 2', 'SSS 3'].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
                onChanged: (v) => setState(() => grade = v!),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => context.go('/home'),
                child: const Text("Create Account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}