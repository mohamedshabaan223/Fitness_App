import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/screens/login_screen.dart';
import 'package:fitness_app/services/valodator_service.dart';
import 'package:fitness_app/widgets/custom_conditions.dart';
import 'package:fitness_app/widgets/custom_eleveted_botton.dart';
import 'package:fitness_app/widgets/custom_facebook_twitter.dart';
import 'package:fitness_app/widgets/custom_have_account.dart';
import 'package:fitness_app/widgets/custom_label.dart';
import 'package:fitness_app/widgets/custom_row_or.dart';
import 'package:fitness_app/widgets/custom_subtitle.dart';
import 'package:fitness_app/widgets/custom_textformfeild.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SecondLoginScreen extends StatefulWidget {
  const SecondLoginScreen({super.key});

  @override
  State<SecondLoginScreen> createState() => _LoginPageState();
}

class _LoginPageState extends State<SecondLoginScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorsServices.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: globalKey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomLabel(
                    fitColor: ColorsServices.black,
                    kitColor: ColorsServices.red,
                    containerColor: ColorsServices.black,
                  ),
                  SizedBox(height: hight * 0.1),
                  CustomSubtitle(),
                  SizedBox(height: hight * 0.03),
                  CustomTextformfeild(
                    controller: userNameController,
                    validator: ValidatorService.usernameValidator,
                    hintText: 'Username*',
                    url: 'assets/images/user 1.png',
                  ),
                  SizedBox(height: 25),
                  CustomTextformfeild(
                    controller: emailController,
                    validator: ValidatorService.validateEmail,
                    hintText: 'Email Id*',
                    url: 'assets/images/email 1.png',
                  ),
                  SizedBox(height: 25),
                  CustomTextformfeild(
                    controller: passwordController,
                    validator: ValidatorService.validatePassword,
                    hintText: 'Password*',
                    url: 'assets/images/password 1.png',
                  ),
                  CustomConditions(),
                  SizedBox(height: 20),
                  CustomElevetedBotton(
                    onPressed: () {
                      globalKey.currentState!.validate();
                    },
                    backgroundColor: ColorsServices.red,
                    fixedSize: Size(384, 54),
                    child: Text(
                      'Signup',

                      style: GoogleFonts.faustina(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: ColorsServices.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomRowOr(),
                  SizedBox(height: 15),
                  CustomFacebookTwitter(),
                  SizedBox(height: 20),
                  CustomHaveAccount(label: 'Login' , onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                  },),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
