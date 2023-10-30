import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:helloworld/google_login.dart';
import 'package:helloworld/login_top.dart';
import 'package:helloworld/test_page1.dart';
import 'package:helloworld/test_page2.dart';
import 'package:helloworld/test_page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ジャーナリングアプリデモ'),
      routes: {
        "/test1": (BuildContext context) => const TestPage1(),
        "/test2": (BuildContext context) => const TestPage2(),
        "/test3": (BuildContext context) => const TestPage3(),
        "/auth/login": (BuildContext context) => const LoginSignUpScreen(),
        "/auth/identifier": (BuildContext context) => const LoginPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const LoginSignUpScreen(),
    );
  }
}
