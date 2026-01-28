import 'package:fitness_app/common/images_services.dart';
import 'package:fitness_app/widgets/custom_label_splash.dart';
import 'package:flutter/material.dart';

class CustomItemPageView extends StatelessWidget {
  const CustomItemPageView({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImagesServices.splashImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withValues(alpha: 0.1),
              Colors.black.withValues(alpha: 0.5),
              Colors.black.withValues(alpha: 1),
            ],
            stops: [0.0, 0.6, 1.0],
            begin: AlignmentGeometry.topCenter,
            end: AlignmentGeometry.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomLabelSplash(label: label),

            SizedBox(height: height * 0.27),
          ],
        ),
      ),
    );
  }
}
