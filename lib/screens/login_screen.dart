import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/common/images_services.dart';
import 'package:fitness_app/services/valodator_service.dart';
import 'package:fitness_app/widgets/custom_eleveted_botton.dart';
import 'package:fitness_app/widgets/custom_facebook_twitter.dart';
import 'package:fitness_app/widgets/custom_forget_password.dart';
import 'package:fitness_app/widgets/custom_have_account.dart';
import 'package:fitness_app/widgets/custom_label.dart';
import 'package:fitness_app/widgets/custom_row_or.dart';
import 'package:fitness_app/widgets/custom_subtitle.dart';
import 'package:fitness_app/widgets/custom_textformfeild.dart';
import 'package:fitness_app/widgets/custom_welcome.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
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
                  CustomWelcome(),
                  CustomSubtitle(),
                  SizedBox(height: hight * 0.06),

                  CustomTextformfeild(
                    controller: emailController,
                    validator: ValidatorService.validateEmail,
                    hintText: 'Email Id*',
                    url: ImagesServices.email,
                  ),
                  SizedBox(height: hight * 0.03),
                  CustomTextformfeild(
                    controller: passwordController,
                    validator: ValidatorService.validatePassword,
                    hintText: 'Password*',
                    url: ImagesServices.password,
                  ),
                  SizedBox(height: hight * 0.015),
                  CustomForgetPassword(),
                  SizedBox(height: hight * 0.04),
                  CustomElevetedBotton(
                    onPressed: () {
                      globalKey.currentState!.validate();
                    },
                    backgroundColor: ColorsServices.red,
                    fixedSize: Size(384, 54),
                    child: Text(
                      'Login',

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
                  CustomHaveAccount(label: 'Signup'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
