import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class BuildOption extends StatelessWidget {
  final String title;
  final bool isSelected;


  const BuildOption({super.key, required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          color:  ColorsServices.grey4,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: ColorsServices.grey3),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.faustina(color: ColorsServices.grey, fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected ? ColorsServices.red: ColorsServices.white2,
                  border: Border.all(color: ColorsServices.grey3),
                ),
              ),
            ],
            ),
        );
    }
}