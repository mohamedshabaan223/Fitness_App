import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextformfeild extends StatelessWidget {
  const CustomTextformfeild({
    super.key,
    required this.hintText,
    required this.url,
    required this.controller,
    required this.validator,
  });
  final String hintText;
  final String url;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: Image.asset(url),
        hintStyle: GoogleFonts.faustina(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: ColorsServices.grey,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorsServices.grey2),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorsServices.grey2),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorsServices.grey2),
        ),
      ),
    );
  }
}
