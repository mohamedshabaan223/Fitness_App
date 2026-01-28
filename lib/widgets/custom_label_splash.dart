import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLabelSplash extends StatelessWidget {
  const CustomLabelSplash({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label , style:GoogleFonts.openSans(fontSize: 30, fontWeight: FontWeight.w400, color: ColorsServices.white)) ;
  }
}