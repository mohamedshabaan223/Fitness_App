import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomForgetPassword extends StatelessWidget {
  const CustomForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Text('Forgot Password?' , style: GoogleFonts.faustina(fontSize: 18 , fontWeight: FontWeight.w500, color: ColorsServices.grey),)
      ],
    );
  }
}