import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHaveAccount extends StatelessWidget {
  const CustomHaveAccount({super.key, required this.label, required this.onTap});
  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: GoogleFonts.faustina(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: ColorsServices.grey,
          ),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            label,
            style: GoogleFonts.faustina(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: ColorsServices.red,
            ),
          ),
        ),
      ],
    );
  }
}
