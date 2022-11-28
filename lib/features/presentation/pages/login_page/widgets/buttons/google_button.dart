// ignore_for_file: unused_local_variable

part of '../../login_page.dart';

class _GoogleSignInButton extends StatelessWidget {
  const _GoogleSignInButton({
    Key? key,
    required this.theme,
  }) : super(key: key);
  final ThemeCubit theme;

  ProviderArgs get args => GoogleSignInArgs(
      redirectUri: 'https://sfera-58b55.firebaseapp.com/__/auth/handler',
      clientId:
          '13755402140-1fko6sj82c20es2650fq1v7vcbgpcr0v.apps.googleusercontent.com');
  Future<void> _googleSignIn() async {
    final googleSignInArgs = GoogleSignInArgs(
      clientId:
          '13755402140-1fko6sj82c20es2650fq1v7vcbgpcr0v.apps.googleusercontent.com',
      redirectUri: 'https://sfera-58b55.firebaseapp.com/__/auth/handler',
      scope: 'email',
    );
    try {
      final result = await DesktopWebviewAuth.signIn(args);
      final credential =
          GoogleAuthProvider.credential(accessToken: result?.accessToken);
      FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onPressed: () {
        _googleSignIn();
      },
      primary: AppColors.color22212f,
      child: RichText(
        text: TextSpan(
          children: [
            const WidgetSpan(
              child: Icon(
                CustomIcons.google,
                color: AppColors.colorFFFFFF,
                size: 18,
              ),
            ),
            const WidgetSpan(
              child: SizedBox(width: 5),
            ),
            TextSpan(
              text: 'google'.tr,
              style: AppTextStyle.wBolds.copyWith(color: AppColors.colorFFFFFF),
            ),
          ],
        ),
      ),
    );
  }
}
