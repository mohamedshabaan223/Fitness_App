import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/widgets/build_option.dart';
import 'package:fitness_app/widgets/custom_eleveted_botton.dart';
import 'package:fitness_app/widgets/custom_label.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _IntendedPurposeState();
}

class _IntendedPurposeState extends State<HelpScreen> {
  String select = "Weight loss";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              CustomLabel(
                fitColor: ColorsServices.black,
                kitColor: ColorsServices.red,
                containerColor: ColorsServices.black,
              ),
              const SizedBox(height: 60),
              const Text(
                'Let us know how we \n'
                'can help you',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Serif',
                ),
              ),
              SizedBox(height: 60),

              GestureDetector(
                onTap: () => setState(() => select = "Weight Loss"),
                child: BuildOption(
                  title: "Weight Loss",
                  isSelected: select == "Weight Loss",
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => select = "Better Sleeping Habit"),
                child: BuildOption(
                  title: "Better Sleeping Habit",
                  isSelected: select == "Better Sleeping Habit",
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => select = "Track My Nutrition"),
                child: BuildOption(
                  title: "Track My Nutrition",
                  isSelected: select == "Track My Nutrition",
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => select = "Improvr Overall Fitness"),
                child: BuildOption(
                  title: "Improvr Overall Fitness",
                  isSelected: select == "Improvr Overall Fitness",
                ),
              ),

              Spacer(),

              CustomElevetedBotton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
                },
                fixedSize: Size(384, 54),
                backgroundColor: ColorsServices.red,
                child: Text(
                  'G E t S T A R E D',
                  style: GoogleFonts.faustina(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: ColorsServices.white,
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
