import 'package:fitness_app/common/colors_services.dart';

import 'package:fitness_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:fitness_app/widgets/step_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://th.bing.com/th/id/OIP.0Zj45EijfJY4a0V3xuYsrAHaFj?w=210&h=180&c=7&r=0&o=7&pid=1.7&rm=3',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(height: 300, color: Colors.transparent),
                  Positioned(
                    top: 50,
                    left: 20,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 50,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.play_circle_outline,
                        color: Colors.white.withOpacity(0.8),
                        size: 80,
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Week Mass - Building Trainer",
                      style: GoogleFonts.faustina(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: ColorsServices.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                      style: GoogleFonts.openSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: ColorsServices.grey,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Workout Schedule",
                      style: GoogleFonts.faustina(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: ColorsServices.black,
                      ),
                    ),
                    SizedBox(height: 20),

                    Row(
                      children: [
                        Expanded(
                          child: StepCard(
                            step: "STEP 1",
                            title: "Warm Up",
                            time: "15 Mins",
                            color: ColorsServices.red,
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: StepCard(
                            step: "STEP 2",
                            title: "Basics Push",
                            time: "20 Mins",
                            color: ColorsServices.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

     // bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
