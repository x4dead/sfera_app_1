part of '../../login_page.dart';

class _GradientButton extends StatelessWidget {
  const _GradientButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 25,
      splashColor: AppColors.colorTransparent,
      overlayColor: MaterialStateProperty.all(AppColors.colorTransparent),
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              colors: [
                AppColors.color031931,
                AppColors.color06325f,
              ]),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.57),
              blurRadius: 5,
            ),
          ],
        ),
        child: Center(
          child: Text('sign'.tr, style: AppTextStyle.wBolds20),
        ),
      ),
    );
  }
}
