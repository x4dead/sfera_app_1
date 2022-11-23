// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:sfera_app_1/features/presentation/resources/custom_icons.dart';
import 'package:sfera_app_1/features/presentation/widgets/app_button/app_button.dart';
import 'package:sfera_app_1/themes/colors/colors.dart';
import 'package:sfera_app_1/themes/text_style/text_style.dart';
import '../../../../service_locator.dart';
import '../../bloc/sfera_bloc.dart';
import '../../widgets/app_text_field/app_text_style.dart';

part 'widgets/gradient_button.dart';
part 'widgets/app_rich_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool _isActive = true;
final _bloc = sl<SferaBloc>();

class _LoginPageState extends State<LoginPage> {
  //
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // User? user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    splashRadius: 25,
                    onPressed: () {},
                    icon: const Icon(Icons.volume_up_outlined),
                  ),
                  IconButton(
                    splashRadius: 25,
                    onPressed: () {},
                    icon: const Icon(Icons.volume_up_outlined),
                  ),
                  IconButton(
                    splashRadius: 25,
                    onPressed: () {},
                    icon: const Icon(Icons.volume_up_outlined),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: SizedBox(
                    width: 390,
                    child: Column(
                      children: [
                        Image.network('https://sfera.zone/img/footer-logo.png',
                            scale: 1.8),
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
                        // email textfield
                        AppTextField(
                          controller: _emailController,
                          icon: Icons.mail_outline_outlined,
                          maxLength: 36,
                          text: 'Email',
                        ),
                        // pasword textfield
                        const SizedBox(height: 10),
                        AppTextField(
                          controller: _passwordController,
                          icon: Icons.lock_outline,
                          obscureText: _isActive,
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
                                  : Icons.visibility_off_outlined,
                              color: AppColors.color000000,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        // BlocConsumer<SferaBloc, SferaStates>(
                        //   listener: (context, state) {
                        //     if (state == const SferaStates.success()) {
                        //       Navigator.pushAndRemoveUntil(
                        //           context,
                        //           MaterialPageRoute(
                        //             builder: (context) => const HomePage(),
                        //           ),
                        //           (route) => false);
                        //     }
                        //   },
                        // builder: (context, state) {
                        // return
                        Column(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot your password?',
                                style: AppTextStyle.wBolds
                                    .copyWith(color: AppColors.color5aa2e7),
                              ),
                            ),
                            const SizedBox(height: 10),
                            GradientButton(
                              onTap: () {
                                // _bloc.add(
                                //   SferaEvents.loginByEmail(
                                //     email: _emailController.text.trim(),
                                //     password:
                                //         _passwordController.text.trim(),
                                //   ),
                                // );
                                // FirebaseAuth.instance
                                //     .signInWithEmailAndPassword(
                                //   email: _emailController.text.trim(),
                                //   password: _passwordController.text.trim(),
                                // );
                                setState(() {});
                              },
                              child: const Text('Sign In',
                                  style: AppTextStyle.wBolds20),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'or'.toUpperCase(),
                              style: GoogleFonts.bebasNeue(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            AppButton(
                              onPressed: () {},
                              primary: AppColors.color22212f,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    CustomIcons.google,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'Sign in with Google',
                                    style: AppTextStyle.wBolds
                                        .copyWith(color: AppColors.colorFFFFFF),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            AppRichText(
                              firstLabel: 'Not a member? ',
                              secondLabel: 'Register now',
                              onTap: () {},
                            ),
                          ],
                        ),
                        // },
                        // ),
                      ],
                    )),
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
