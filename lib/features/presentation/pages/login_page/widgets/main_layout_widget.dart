﻿part of '../login_page.dart';

class _MainLayoutWidget extends StatefulWidget {
  const _MainLayoutWidget({
    Key? key,
    required this.formKey,
    required this.onTapGradientButton,
    required this.emailController,
    required this.passwordController,
    required this.onTapGoogleButton,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final Function() onTapGradientButton;
  final Function() onTapGoogleButton;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  State<_MainLayoutWidget> createState() => _MainLayoutWidgetState();
}

class _MainLayoutWidgetState extends State<_MainLayoutWidget> {
  final _isActive = ValueNotifier<bool>(true);
  final _theme = ThemeCubit();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              padding: const EdgeInsets.all(20),
              splashRadius: 25,
              onPressed: () {
                Navigator.pushNamed(context, '/settingsPage');
              },
              icon: const Icon(Icons.settings_rounded),
            ),
          ),
          SizedBox(
            width: 390,
            child: Column(
              children: [
                Image.asset(AppImages.sfera, scale: 1.5),
                const SizedBox(height: 10),
                Text(
                  'hello'.tr.toUpperCase(),
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 52,
                      fontFamily: GoogleFonts.oswald().fontFamily),
                ),
                Text(
                  'welcome'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontSize: 20),
                ),
                const SizedBox(height: 25),
                AppTextField(
                    inputFormatters: FieldFormClass.regExpEmail,
                    controller: widget.emailController,
                    icon: Icons.mail_outline_rounded,
                    maxLength: 36,
                    text: 'email'.tr,
                    validator: (email) => FieldFormClass.validatorEmail(email)),
                const SizedBox(height: 10),
                ValueListenableBuilder(
                  valueListenable: _isActive,
                  builder: (context, value, child) {
                    return AppTextField(
                      inputFormatters: FieldFormClass.regExpPassword,
                      controller: widget.passwordController,
                      icon: Icons.lock_rounded,
                      obscureText: _isActive.value,
                      maxLength: 16,
                      text: 'password'.tr,
                      validator: (password) =>
                          FieldFormClass.validatorPassword(password),
                      suffix: IconButton(
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
                              ? Icons.visibility_rounded
                              : Icons.visibility_off_rounded,
                          color: AppColors.color000000.withOpacity(0.85),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'forgot'.tr,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.color5aa2e7),
                  ),
                ),
                const SizedBox(height: 10),
                _GradientButton(
                  onTap: widget.onTapGradientButton,
                ),
                const SizedBox(height: 10),
                Text(
                  'or'.tr.toUpperCase(),
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.oswald().fontFamily),
                ),
                const SizedBox(height: 10),
                _GoogleSignInButton(
                    theme: _theme, onTapGoogleButton: widget.onTapGoogleButton),
                const SizedBox(height: 20),
                const _RegisterNowButton(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
