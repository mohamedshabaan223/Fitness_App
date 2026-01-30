import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/common/images_services.dart';
import 'package:fitness_app/screens/help_screen.dart';
import 'package:fitness_app/widgets/custom_eleveted_botton.dart';
import 'package:fitness_app/widgets/custom_gender_image.dart';
import 'package:fitness_app/widgets/custom_label.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorsServices.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomLabel(
                fitColor: ColorsServices.black,
                kitColor: ColorsServices.red,
                containerColor: ColorsServices.black,
              ),
              SizedBox(height: hight * 0.06),
              Text(
                'Gender',
                style: GoogleFonts.faustina(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  color: ColorsServices.black2,
                ),
              ),
              SizedBox(height: hight * 0.035),
              CustomGenderImage(url: ImagesServices.male, onTap: () {}),
              SizedBox(height: hight * 0.03),
              CustomGenderImage(url: ImagesServices.female, onTap: () {}),
              SizedBox(height: hight * 0.05),
              CustomElevetedBotton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>HelpScreen()));
                },
                fixedSize: Size(384, 54),
                backgroundColor: ColorsServices.red,
                child: Text(
                  'N E X T',
                  style: GoogleFonts.faustina(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: ColorsServices.white,
                  ),
                ),
              ),
              SizedBox(height: hight * 0.035),
              Text(
                'To give you a better experrince\n we need to know your Gender ',
                style: GoogleFonts.faustina(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: ColorsServices.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
