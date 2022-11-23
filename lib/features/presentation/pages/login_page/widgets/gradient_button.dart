part of '../login_page.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  final Function() onTap;
  final Widget child;

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
          child: Center(child: child)),
    );
  }
}
