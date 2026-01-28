
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLabel extends StatelessWidget {
  const CustomLabel({super.key, required this.fitColor, required this.kitColor, required this.containerColor});
  final Color fitColor;
  final Color kitColor;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return  Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('F i t  ' , style: GoogleFonts.faustina(fontSize: 60, fontWeight: FontWeight.w500, color: fitColor),) ,
                Column(
                  children: [
                    Text('K i t' ,style: GoogleFonts.faustina(fontSize: 60, fontWeight: FontWeight.w500, color: kitColor)),
                    Container(
                      width: 100,
                      height: 2,
                      decoration: BoxDecoration(
                        color: containerColor
                      ),
                    )
                  ],
                )
              ],);
  }
}