import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowersList extends StatelessWidget {
  const FollowersList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 6,
        itemBuilder: (context, index) {
          return const _FollowerItem();
        },
      ),
    );
  }
}

class _FollowerItem extends StatelessWidget {
  const _FollowerItem();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children:  [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=5'),
          ),
          SizedBox(height: 6),
          Text(
            'Amelia\nJohnson',
            textAlign: TextAlign.center,
            style:  GoogleFonts.openSans(fontSize: 13, color: ColorsServices.black, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}