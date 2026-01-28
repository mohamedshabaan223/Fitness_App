import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/screens/sign_screen.dart';
import 'package:fitness_app/widgets/custom_eleveted_botton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSkipNextBotton extends StatelessWidget {
  const CustomSkipNextBotton({super.key, required this.pageController, });
  final PageController pageController;
   
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          CustomElevetedBotton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SignScreen()));
            },
            fixedSize: Size(width * 0.22, height * 0.1),
            backgroundColor: Colors.transparent,
            child: Text(
              'Skip',
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: ColorsServices.white,
              ),
            ),
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: JumpingDotEffect(
              activeDotColor: ColorsServices.red,
              dotColor: ColorsServices.white,
              dotHeight: 10,
              dotWidth: 10,
            ),
          ),
          CustomElevetedBotton(
            onPressed: () {
              pageController.nextPage(
                duration: Duration(microseconds: 500),
                curve: Curves.bounceIn
                
              );
             
            },
            fixedSize: Size(width * 0.22, height * 0.1),
            backgroundColor: Colors.transparent,
            child: Text(
              'Next',
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: ColorsServices.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
