import 'package:flutter/material.dart';

class PasswordAuthPage extends StatefulWidget {
  final String email;
  const PasswordAuthPage({super.key, required this.email});

  @override
  PasswordAuthPageState createState() => PasswordAuthPageState();
}

class PasswordAuthPageState extends State<PasswordAuthPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController.text = widget.email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Password Authentication")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: "Email address",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("パスワード認証ボタンが押されました");
              }, // パスワードでのログイン処理を実装してください
              child: const Text("Log in"),
            ),
          ],
        ),
      ),
    );
  }
}
