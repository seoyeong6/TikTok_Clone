import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/authentication/login_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/features/authentication/widgets/auth_button.dart';
import 'package:tiktok_clone/features/authentication/email_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  void onLoginTap(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  void onEmailTap(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => const EmailScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.size40),
          child: Column(
            children: [
              Gaps.v80,
              Text(
                'Sign Up for TikTok',
                style: TextStyle(
                  fontSize: Sizes.size24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Gaps.v20,
              Text(
                "Create a profile, follow other accounts, make your own videos, and more.",
                style: TextStyle(fontSize: Sizes.size16, color: Colors.black45),
                textAlign: TextAlign.center,
              ),
              Gaps.v40,
              GestureDetector(
                onTap: () => onEmailTap(context),
                child: AuthButton(
                  icon: FaIcon(FontAwesomeIcons.solidUser),
                  text: "Use email and password",
                ),
              ),
              Gaps.v16,
              AuthButton(
                icon: FaIcon(FontAwesomeIcons.apple),
                text: "Continue with Apple",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 2,
        color: Colors.grey.shade50,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.size10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account?"),
              Gaps.h5,
              GestureDetector(
                onTap: () => onLoginTap(context),
                child: Text(
                  "Log in",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
