import 'package:flutter/material.dart';
import 'package:tiktok_clone/features/authentication/login_screen.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok Clone',
      theme: ThemeData(primaryColor: Color(0xFFE9435A)),
      home: LoginScreen(),
    );
  }
}
