part of '../login_page.dart';

class AuthErrorWidget extends StatelessWidget {
  const AuthErrorWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).dialogBackgroundColor,
      title: Text('authorisation'.tr,
          maxLines: 2,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Theme.of(context).errorColor)),
      content: SingleChildScrollView(
        child: Text(
          message,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      actions: [
        TextButton(
          style: ButtonStyle(
            overlayColor:
                MaterialStateProperty.all(Theme.of(context).dividerColor),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('try'.tr, style: Theme.of(context).textTheme.subtitle2),
        )
      ],
    );
  }
}
