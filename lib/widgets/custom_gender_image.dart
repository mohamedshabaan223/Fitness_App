import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';

class CustomGenderImage extends StatelessWidget {
  const CustomGenderImage({super.key, required this.url, required this.onTap});
  final String url;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: ColorsServices.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: ColorsServices.grey),
        ),
        child: Column(
          children: [
            Container(height: hight * 0.013),
            Image.asset(url, fit: BoxFit.fill),
          ],
        ),
      ),
    );
  }
}
