// ignore_for_file: prefer_const_constructors
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:sfera_app_1/themes/colors/colors.dart';

import 'features/presentation/widgets/app_button/app_button.dart';
import 'features/presentation/widgets/app_text_field/app_text_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool _isActive = true;

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
                  onPressed: () {
                    if (_isActive == true) {
                      _isActive = false;
                    } else {
                      _isActive = true;
                    }
                    setState(() {});
                  },
                  icon: Icon(
                    _isActive == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off,
                    color: AppColors.color000000,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // sign is button
              AppButton(
                onPressed: () {},
                text: 'Sign In',
                child: Text('123'),
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
