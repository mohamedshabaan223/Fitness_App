import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomSubtitle extends StatelessWidget {
  const CustomSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Create Your Account',
      style: GoogleFonts.faustina(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: ColorsServices.grey,
      ),
    );
  }
}
