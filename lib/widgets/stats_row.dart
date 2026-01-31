
import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatsRow extends StatelessWidget {
  const StatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        _StatItem(value: '5k  ', label: 'Followers'),
        SizedBox(width: 16),
        Text('|', style: TextStyle(color: Colors.white54)),
        SizedBox(width: 16),
        _StatItem(value: '2k  ', label: 'Following'),
      ],
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;

  const _StatItem({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          value,
          style: GoogleFonts.faustina(fontSize: 16, color: ColorsServices.white2, fontWeight: FontWeight.w400),
        ),
        Text(
          label,
          style: GoogleFonts.faustina(fontSize: 16, color: ColorsServices.white2, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
