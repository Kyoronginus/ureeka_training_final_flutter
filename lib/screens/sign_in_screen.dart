import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class SignInScreen extends StatefulWidget {
  final AuthService authService;
  const SignInScreen({super.key, required this.authService});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _error;

  Future<void> _signIn() async {
    setState(() => _error = null);
    try {
      await widget.authService.signIn(
        _emailController.text.trim(),
        _passwordController.text.trim(),
      );
    } on Exception catch (e) {
      setState(() => _error = e.toString());
    }
  }

  Future<void> _register() async {
    setState(() => _error = null);
    try {
      await widget.authService.register(
        _emailController.text.trim(),
        _passwordController.text.trim(),
      );
    } on Exception catch (e) {
      setState(() => _error = e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AuthTextField(
              controller: _emailController,
              label: 'Email',
              obscureText: false,
            ),
            AuthTextField(
              controller: _passwordController,
              label: 'Password',
              obscureText: true,
            ),
            if (_error != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(_error!, style: const TextStyle(color: Colors.red)),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: _signIn, child: const Text('Sign In')),
                ElevatedButton(
                    onPressed: _register, child: const Text('Register')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AuthTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool obscureText;

  const AuthTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      obscureText: obscureText,
    );
  }
}
