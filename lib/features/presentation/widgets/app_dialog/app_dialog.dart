import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  const AppDialog(
      {super.key,
      required this.title,
      required this.actionTitle,
      required this.actionOnTap,
      this.actionColor});

  final String title;
  final String actionTitle;
  final Function() actionOnTap;
  final Color? actionColor;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      actionsPadding:
          const EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 5),
      titlePadding: const EdgeInsets.all(20),
      title: Text(title, textAlign: TextAlign.center),
      titleTextStyle: Theme.of(context).textTheme.subtitle1,
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        TextButton(
          style: ButtonStyle(
            overlayColor:
                MaterialStateProperty.all(Theme.of(context).dividerColor),
          ),
          onPressed: actionOnTap,
          child: Text(actionTitle,
              style: Theme.of(context)
                  .textTheme
                  .button
                  ?.copyWith(color: actionColor)),
        ),
      ],
    );
  }
}
