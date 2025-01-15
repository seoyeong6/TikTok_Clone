import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/constants/gaps.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Sign up")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.size36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.v40,
            Text(
              "Create username",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: Sizes.size20,
              ),
            ),
            Gaps.v8,
            Text(
              "You can always change this later.",
              style: TextStyle(color: Colors.black54, fontSize: Sizes.size16),
            ),
            Gaps.v40,
            TextField(decoration: InputDecoration(hintText: "Username")),
          ],
        ),
      ),
    );
  }
}
