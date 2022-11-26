import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sfera_app_1/features/presentation/widgets/app_button/app_button.dart';
import 'package:sfera_app_1/features/presentation/widgets/app_text_field/app_text_style.dart';
import 'package:sfera_app_1/themes/colors/colors.dart';
import 'package:sfera_app_1/themes/text_style/text_style.dart';

import '../../../../service_locator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = sl<FirebaseAuth>().currentUser!;
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              sl<FirebaseAuth>().signOut();
            },
            icon: const Icon(Icons.logout)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Center(
            child: SizedBox(
              width: 390,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Поздравляю вы вошли в свой аккаунт\nваш ник: ${user.displayName}',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.wBolds20
                        .copyWith(color: AppColors.color000000),
                  ),
                  AppTextField(
                      controller: nameController,
                      text: 'Name',
                      validator: (name) => name!.length < 3
                          ? 'Name must contain at least 3 characters'
                          : null),
                  AppButton(
                    onPressed: () {
                      final isValid = formKey.currentState!.validate();
                      if (!isValid) return;
                      user.updateDisplayName(nameController.text);
                      // nameController.clear();
                      setState(() {});
                    },
                    child: const Text(
                      'Change name',
                      style: AppTextStyle.wBolds20,
                    ),
                  ),
                ],
              ),
            ),
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
