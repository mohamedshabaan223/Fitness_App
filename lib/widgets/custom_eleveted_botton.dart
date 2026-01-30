import 'package:flutter/material.dart';

class CustomElevetedBotton extends StatelessWidget {
  const CustomElevetedBotton({
    super.key,
    required this.onPressed,
    required this.child,
    required this.fixedSize,
    required this.backgroundColor,
  });
  final void Function()? onPressed;
  final Widget? child;
  final Size? fixedSize;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(5),
        ),
        fixedSize: fixedSize,
      ),
      child: child,
    );
  }
}
