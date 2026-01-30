import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StepCard extends StatelessWidget {
  final String step;
  final String title;
  final String time;
  final Color color;

  const StepCard({super.key, required this.step, required this.title, required this.time, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(16),
      decoration: BoxDecoration(
        color:color,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            step,
            style:  GoogleFonts.faustina(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ColorsServices.white2,
                      )
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style:GoogleFonts.faustina(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: ColorsServices.white2,
                      )
          ),
          const Spacer(),
          Text(
            time,
            style: GoogleFonts.faustina(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorsServices.white2,
                      )
          ),
        ],
      ),
    );
  }
}