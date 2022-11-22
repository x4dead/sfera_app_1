// ignore_for_file: prefer_const_constructors

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

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
<<<<<<< Updated upstream
      body: SafeArea(
        child: Center(
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Hello
            Image.asset('lib/assets/images/logo.png', scale: 1.8),
            SizedBox(height: 10),
            Text(
              'HELLO AGAIN!',
              style: GoogleFonts.bebasNeue(
                fontSize: 52,
              ),
            ),
            SizedBox(height: 1),
            Text(
              'Welcom back!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 25),
            // email textfield
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 500.0, vertical: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email:',
                    ),
                  ),
                ),
              ),
            ),
            // pasword textfield
            SizedBox(height: 10),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 500.0, vertical: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password:',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            // sign is button
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 500.0, vertical: 10.0),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Not a member? ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Register now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ]),
=======
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
>>>>>>> Stashed changes
        ),
      ),
    );
  }
}
