import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    Key? key,
    required this.content,
    required this.title,
    this.actionTitle = 'try',
  }) : super(key: key);

  final String content;
  final String title;
  final String? actionTitle;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: Theme.of(context).dialogBackgroundColor,
      title: Text(
        title.tr,
        maxLines: 2,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Theme.of(context).errorColor,
            ),
      ),
      content: SingleChildScrollView(
        child: Text(
          content,
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
          child: Text(actionTitle!.tr,
              style: Theme.of(context).textTheme.subtitle2),
        )
      ],
    );
  }
}
