import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sfera_app_1/features/presentation/widgets/app_button/app_button.dart';
import 'package:sfera_app_1/features/presentation/widgets/app_text_field/app_text_field.dart';
import 'package:sfera_app_1/features/presentation/widgets/app_text_field/field_from_class.dart';
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
              const LogoutButton(),
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
                      icon: Icons.person,
                      maxLength: 16,
                      inputFormatters: FieldFormClass.regExpName,
                      controller: nameController,
                      text: 'Name',
                      validator: (name) => FieldFormClass.validatorName(name),
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
                              return DialogWidget(
                                title: 'Are you sure?',
                                actionTitle: 'Yes',
                                actionOnTap: () async {
                                  Navigator.pop(context);
                                  await user?.updateDisplayName(
                                    nameController.text,
                                  );
                                  nameController.clear();
                                  setState(() {});
                                },
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

class LogoutButton extends StatelessWidget {
  const LogoutButton({
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
                return DialogWidget(
                  title: 'Are you sure you want to exit?',
                  actionTitle: 'Exit',
                  actionOnTap: () {
                    sl<FirebaseAuth>().signOut();
                    Navigator.pushNamed(context, '/loginPage');
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class DialogWidget extends StatelessWidget {
  const DialogWidget(
      {super.key,
      required this.title,
      required this.actionTitle,
      required this.actionOnTap});

  final String title;
  final String actionTitle;
  final Function() actionOnTap;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      actionsPadding:
          const EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 5),
      titlePadding: const EdgeInsets.all(20),
      title: Text(title, textAlign: TextAlign.center),
      titleTextStyle: AppTextStyle.w400s14
          .copyWith(color: AppColors.color000000, fontSize: 16),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        InkWell(
          splashColor: AppColors.colorTransparent,
          overlayColor: MaterialStateProperty.all(AppColors.colorTransparent),
          onTap: actionOnTap,
          child: Text(actionTitle, style: AppTextStyle.wBolds),
        ),
      ],
    );
  }
}
