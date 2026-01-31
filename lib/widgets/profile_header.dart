
import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/widgets/stats_row.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24),
      color: ColorsServices.red,
      child: Column(
        children:  [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            child: Text(
              'UN',
              style: GoogleFonts.faustina(fontSize: 48, color: ColorsServices.black, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 12),
          Text(
            'User Name',
            style: GoogleFonts.faustina(fontSize: 24, color: ColorsServices.white2, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 12),
          StatsRow(),
        ],
      ),
    );
  }
}
