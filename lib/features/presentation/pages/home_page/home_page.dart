import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sfera_app_1/features/presentation/widgets/app_button/app_button.dart';
import 'package:sfera_app_1/features/presentation/widgets/app_text_field/app_text_field.dart';
import 'package:sfera_app_1/themes/colors/colors.dart';
import 'package:sfera_app_1/themes/text_style/text_style.dart';

import '../../../../service_locator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = sl<FirebaseAuth>().currentUser;

  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const LogOutButton(),
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    Text(
                      'Поздравляю вы вошли в свой аккаунт ваш ник: ${user?.displayName}',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.wBolds20
                          .copyWith(color: AppColors.color000000),
                    ),
                    const SizedBox(height: 20),
                    AppTextField(
                      maxLength: 12,
                      inputFormatters: RegExp(r'[A-Za-z]+'),
                      controller: nameController,
                      text: 'Name',
                      validator: (name) {
                        RegExp(r'[A-Za-z]+');
                        if (name!.length < 3) {
                          return 'Name must contain at least 3 characters';
                        }
                        {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(height: 20),
                    AppButton(
                      primary: AppColors.color06325f,
                      child: const Text(
                        'Change name',
                        style: AppTextStyle.wBolds20,
                      ),
                      onPressed: () async {
                        final isValid = formKey.currentState!.validate();
                        if (isValid) {
                          await showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Are you sure you?',
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 10),
                                      Divider(
                                        color: AppColors.color000000
                                            .withOpacity(0.5),
                                        endIndent: 7,
                                        indent: 7,
                                        height: 1.5,
                                      ),
                                      const SizedBox(height: 5),
                                      InkWell(
                                        splashColor: AppColors.colorTransparent,
                                        overlayColor: MaterialStateProperty.all(
                                            AppColors.colorTransparent),
                                        child: const Text(
                                          'Yes',
                                          style: AppTextStyle.wBolds,
                                        ),
                                        onTap: () async {
                                          await user?.updateDisplayName(
                                            nameController.text,
                                          );
                                          Navigator.pop(context);
                                          nameController.clear();
                                          setState(() {});
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      },
                    ),
                  ],
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
    nameController.dispose();
    super.dispose();
  }
}

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Align(
        alignment: Alignment.topLeft,
        child: IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () async {
            await showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Text(
                          'Are you sure you want to exit?',
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          child: const Text(
                            'Exit',
                            style: AppTextStyle.wBolds,
                          ),
                          onTap: () {
                            sl<FirebaseAuth>().signOut();
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
