import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Items extends StatelessWidget {
  final String title;
  const Items ({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: ListTile(
            title: Text(
              title,
              style: GoogleFonts.faustina(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: ColorsServices.black,
                  ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black),
            onTap: () {},
            ),
        );
    }
}