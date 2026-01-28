import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/common/images_services.dart';
import 'package:fitness_app/screens/login_screen.dart';
import 'package:fitness_app/widgets/custom_eleveted_botton.dart';
import 'package:fitness_app/widgets/custom_label.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagesServices.fitnessWoman),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withValues(alpha: 0.9),
                Colors.black.withValues(alpha: 0.7),
                Colors.transparent,
              ],
              stops: [0.3, 0.6, 1.0],
              begin: AlignmentGeometry.bottomCenter,
              end: AlignmentGeometry.topCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             
             CustomLabel(fitColor: ColorsServices.white2, kitColor:  ColorsServices.white2, containerColor:  ColorsServices.white2)
              ,
              SizedBox(height: height * 0.1),
           Text('Lorem Ipsum is simply dummy text of' , style: GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.w400, color: ColorsServices.white2),),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('the printing and ', style: GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.w400, color: ColorsServices.white2)),
              Text('typesetting' ,style: GoogleFonts.openSans(fontSize: 17, fontWeight: FontWeight.w700, color: ColorsServices.white2))
            ],
           ),
           SizedBox(height: height * 0.05),
           CustomElevetedBotton(onPressed: (){}, 
           
            fixedSize: Size(366, 54),
             backgroundColor: ColorsServices.red,
             child: Text('S I G N  U P',style: GoogleFonts.faustina(fontSize: 24, fontWeight: FontWeight.w600, color: ColorsServices.white2)),),
            SizedBox(height: height * 0.03),
             CustomElevetedBotton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
             }, 
           
            fixedSize: Size(200, 22),
             backgroundColor: Colors.transparent,
             child: Text('Log In With Account ',style: GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.w400, color: ColorsServices.white2)),)
           ,SizedBox(height: height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}

