part of '../login_page.dart';

class _MainLayoutWidget extends StatefulWidget {
  const _MainLayoutWidget({
    Key? key,
    required this.formKey,
    required this.onTap,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final Function() onTap;
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
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                splashRadius: 25,
                onPressed: () {
                  Navigator.pushNamed(context, '/settingsPage');
                },
                icon: const Icon(Icons.settings_rounded),
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: 390,
                child: Column(
                  children: [
                    Image.asset(AppImages.sfera, scale: 1.5),
                    const SizedBox(height: 10),
                    Text(
                      'hello'.tr.toUpperCase(),
                      style: AppTextStyle.oswald
                          .copyWith(fontSize: 52, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 1),
                    Text('welcome'.tr,
                        style: AppTextStyle.w400s20
                            .copyWith(fontWeight: FontWeight.normal)),
                    const SizedBox(height: 25),
                    AppTextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'[0-9a-z@.]'),
                        ),
                      ],
                      controller: widget.emailController,
                      icon: Icons.mail_outline_rounded,
                      maxLength: 36,
                      text: 'email'.tr,
                      validator: (email) {
                        if (email != null && !EmailValidator.validate(email)) {
                          return 'enter'.tr;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    ValueListenableBuilder(
                      valueListenable: _isActive,
                      builder: (context, value, child) {
                        return AppTextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r'[A-z0-9]'),
                            ),
                          ],
                          controller: widget.passwordController,
                          icon: Icons.lock_rounded,
                          obscureText: _isActive.value,
                          maxLength: 16,
                          text: 'password'.tr,
                          validator: (password) =>
                              password != null && password.length < 6
                                  ? 'the'.tr
                                  : null,
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
                    InkWell(
                      borderRadius: BorderRadius.circular(5),
                      onTap: () {},
                      child: Text(
                        'forgot'.tr,
                        style: AppTextStyle.wBolds
                            .copyWith(color: AppColors.color5aa2e7),
                      ),
                    ),
                    const SizedBox(height: 10),
                    _GradientButton(
                      onTap: widget.onTap,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'or'.tr.toUpperCase(),
                      style: AppTextStyle.oswald.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    _GoogleSignInButton(theme: _theme),
                    const SizedBox(height: 20),
                    const _RegisterNowButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
