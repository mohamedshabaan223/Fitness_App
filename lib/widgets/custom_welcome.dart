import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomWelcome extends StatelessWidget {
  const CustomWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome!',
      style: GoogleFonts.faustina(
        fontSize: 36,
        fontWeight: FontWeight.w500,
        color: ColorsServices.black2,
      ),
    );
  }
}
