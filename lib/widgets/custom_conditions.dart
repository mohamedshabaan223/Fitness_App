import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomConditions extends StatefulWidget {
  const CustomConditions({super.key});

  @override
  State<CustomConditions> createState() => _CustomConditionsState();
}

class _CustomConditionsState extends State<CustomConditions> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          activeColor: ColorsServices.red,
          value: isSelected,
          onChanged: (value) {
            isSelected = value!;
            setState(() {});
          },
        ),
        Text(
          'I Read and agree to',
          style: GoogleFonts.faustina(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: ColorsServices.grey,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            ' Terms & Conditions',
            style: GoogleFonts.faustina(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: ColorsServices.blue,
            ),
          ),
        ),
      ],
    );
  }
}
