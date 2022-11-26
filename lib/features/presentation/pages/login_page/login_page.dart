// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:sfera_app_1/features/presentation/pages/home_page/home_page.dart';
import 'package:sfera_app_1/features/presentation/resources/custom_icons.dart';
import 'package:sfera_app_1/features/presentation/resources/images.dart';
import 'package:sfera_app_1/features/presentation/widgets/app_button/app_button.dart';
import 'package:sfera_app_1/themes/colors/colors.dart';
import 'package:sfera_app_1/themes/text_style/text_style.dart';
import '../../../../service_locator.dart';
import '../../bloc/sfera_bloc.dart';
import '../../widgets/app_text_field/app_text_style.dart';

part 'widgets/gradient_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _isActive = ValueNotifier<bool>(true);
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> login() async {
    final navigator = Navigator.of(context);
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;
    try {
      await sl<FirebaseAuth>().signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e.code);
      return;
    }
    navigator.pushNamedAndRemoveUntil(
        '/homePage', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: IconButton(
                          splashRadius: 25,
                          onPressed: () {},
                          icon: const Icon(Icons.volume_up_outlined),
                        ),
                      ),
                      const WidgetSpan(
                        child: SizedBox(width: 15),
                      ),
                      WidgetSpan(
                        child: IconButton(
                          splashRadius: 25,
                          onPressed: () {},
                          icon: const Icon(Icons.volume_up_outlined),
                        ),
                      ),
                      const WidgetSpan(
                        child: SizedBox(width: 15),
                      ),
                      WidgetSpan(
                        child: IconButton(
                          splashRadius: 25,
                          onPressed: () {},
                          icon: const Icon(Icons.volume_up_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: 390,
                  child: Column(
                    children: [
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            Image.asset(AppImages.sfera, scale: 1.5),
                            const SizedBox(height: 10),
                            Text(
                              'Hello again!'.toUpperCase(),
                              style: GoogleFonts.bebasNeue(fontSize: 52),
                            ),
                            const SizedBox(height: 1),
                            const Text(
                              'Welcome back!',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 25),
                            AppTextField(
                              keyboardTypes: TextInputType.emailAddress,
                              controller: _emailController,
                              icon: Icons.mail_outline_outlined,
                              maxLength: 36,
                              text: 'Email',
                            ),
                            const SizedBox(height: 10),
                            AppTextField(
                              keyboardTypes: TextInputType.text,
                              controller: _passwordController,
                              icon: Icons.lock_outline,
                              obscureText: _isActive.value,
                              maxLength: 16,
                              text: 'Password',
                              suffix: ValueListenableBuilder(
                                builder: (context, value, child) {
                                  return IconButton(
                                    splashRadius: 15,
                                    onPressed: () {
                                      if (_isActive.value == true) {
                                        _isActive.value = false;
                                      } else {
                                        _isActive.value = true;
                                      }
                                    },
                                    icon: Icon(
                                      _isActive.value == true
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: AppColors.color000000,
                                    ),
                                  );
                                },
                                valueListenable: _isActive,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Forgot your password?',
                                    style: AppTextStyle.wBolds
                                        .copyWith(color: AppColors.color5aa2e7),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                GradientButton(
                                  onTap: login,
                                  child: const Text('Sign In',
                                      style: AppTextStyle.wBolds20),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'or'.toUpperCase(),
                                  style: GoogleFonts.bebasNeue(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 10),
                                AppButton(
                                  onPressed: () {},
                                  primary: AppColors.color22212f,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        const WidgetSpan(
                                          child: Icon(
                                            CustomIcons.google,
                                            size: 18,
                                          ),
                                        ),
                                        const WidgetSpan(
                                          child: SizedBox(width: 5),
                                        ),
                                        TextSpan(
                                          text: 'Sign in with Google',
                                          style: AppTextStyle.wBolds.copyWith(
                                              color: AppColors.colorFFFFFF),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Not a member? ',
                                          style: AppTextStyle.wBolds.copyWith(
                                              color: AppColors.color000000)),
                                      WidgetSpan(
                                        child: InkWell(
                                          onTap: () {},
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: Text(
                                            'Register now',
                                            style: AppTextStyle.wBolds.copyWith(
                                                color: AppColors.color5aa2e7),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
