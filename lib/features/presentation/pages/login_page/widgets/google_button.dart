// ignore_for_file: unrelated_type_equality_checks

part of '../login_page.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({
    Key? key,
    required this.theme,
  }) : super(key: key);
  final ThemeCubit theme;

  Future<void> _googleSignIn(context) async {
    final googleSignIn = GoogleSignIn();
    final googleAccount = await googleSignIn.signIn();
    if (googleAccount != null) {
      final googleAuth = await googleAccount.authentication;
      if (googleAuth.accessToken != null && googleAuth.idToken != null) {
        try {
          await sl<FirebaseAuth>().signInWithCredential(
            GoogleAuthProvider.credential(
                idToken: googleAuth.idToken,
                accessToken: googleAuth.accessToken),
          );
          Navigator.of(context).pushReplacementNamed('/homePage');
        } on FirebaseException catch (error) {
          print(error);
          // GlobalMethods.errorDialog(
          // subtitle: '${error.message}', context: context);
          // } catch (error) {
          // GlobalMethods.errorDialog(subtitle: '$error', context: context);
        } finally {}
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onPressed: () {
        _googleSignIn(context);
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
              text: 'Sign in with Google',
              style: AppTextStyle.wBolds.copyWith(color: AppColors.colorFFFFFF),
            ),
          ],
        ),
      ),
    );
  }
}
