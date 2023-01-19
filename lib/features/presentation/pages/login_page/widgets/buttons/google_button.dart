// ignore_for_file: unused_local_variable

part of '../../login_page.dart';

class _GoogleSignInButton extends StatelessWidget {
  const _GoogleSignInButton({
    Key? key,
    required this.theme,
    required this.onTapGoogleButton,
  }) : super(key: key);
  final ThemeCubit theme;
  final Function() onTapGoogleButton;

  // Future<void> _googleSignIn() async {
  //   final googleSignInArgs = GoogleSignInArgs(
  //     clientId: AppConstants.clientId,
  //     redirectUri: AppConstants.redirectUri,
  //     scope: 'email',
  //   );
  //   try {
  //     final result =
  //         await DesktopWebviewAuth.signIn(args, height: 700, width: 1000);
  //     final credential =
  //         GoogleAuthProvider.credential(accessToken: result?.accessToken);
  //     sl<FirebaseAuth>().signInWithCredential(credential);
  //   } catch (e) {
  //     return;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onPressed: onTapGoogleButton,
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
