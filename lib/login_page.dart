// ignore_for_file: prefer_const_constructors

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:sfera_app_1/themes/colors/colors.dart';
import 'package:sfera_app_1/widgets/app_button/app_button.dart';
import 'package:sfera_app_1/widgets/app_text_style/app_text_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SizedBox(
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Hello
              // Image.asset('lib/assets/images/logo.png', scale: 1.8),
              const SizedBox(height: 10),
              Text(
                'Hello again!'.toUpperCase(),
                style: GoogleFonts.bebasNeue(
                  fontSize: 52,
                ),
              ),
              const SizedBox(height: 1),
              const Text(
                'Welcom back!',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 25),
              // email textfield
              const AppTextField(
                icon: Icons.mail_outline_outlined,
                maxLength: 36,
                text: 'Email',
              ),
              // pasword textfield
              const SizedBox(height: 10),
              AppTextField(
                icon: Icons.lock_outline,
                maxLength: 16,
                text: 'Password',
                suffix: IconButton(
                  splashRadius: 15,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.visibility_outlined,
                    color: AppColors.color000000,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // sign is button
              AppButton(
                onPressed: () {},
                text: 'Sign In',
              ),
              const SizedBox(height: 20),
              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not a member? ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
