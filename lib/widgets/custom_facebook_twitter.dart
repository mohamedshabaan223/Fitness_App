import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/common/images_services.dart';
import 'package:fitness_app/widgets/custom_eleveted_botton.dart';
import 'package:flutter/material.dart';

class CustomFacebookTwitter extends StatelessWidget {
  const CustomFacebookTwitter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomElevetedBotton(
          onPressed: () {},
          fixedSize: Size(100, 46),
          backgroundColor: ColorsServices.blue1,
          child: Image.asset(ImagesServices.twitter),
        ),
        SizedBox(width: 20),
        CustomElevetedBotton(
          onPressed: () {},
          fixedSize: Size(100, 46),
          backgroundColor: ColorsServices.blue2,
          child: Image.asset(ImagesServices.facebook),
        ),
      ],
    );
  }
}
