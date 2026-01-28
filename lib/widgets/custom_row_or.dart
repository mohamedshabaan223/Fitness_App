import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomRowOr extends StatelessWidget {
  const CustomRowOr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'OR',
                        style: GoogleFonts.faustina(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: ColorsServices.grey,
                        ),
                      ),
                    ],
                  );
  }
}