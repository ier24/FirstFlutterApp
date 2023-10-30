import 'package:flutter/material.dart';

class LoginSignUpScreen extends StatelessWidget {
  const LoginSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('はじめましょう'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // ログイン処理をここに書く
                print('ログインボタンが押されました');
                Navigator.of(context).pushNamed("/auth/identifier");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // ボタンの背景色
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
              child: const Text(
                'Log in',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // サインアップ処理をここに書く
                print('サインアップボタンが押されました');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // ボタンの背景色
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
              child: const Text(
                'Sign up',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
