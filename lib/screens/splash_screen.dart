import 'package:fitness_app/widgets/custom_skip_next_botton.dart';

import 'package:fitness_app/widgets/custom_item_page_view.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          PageView(
            controller: pageController,
            children: [
              CustomItemPageView(label: 'Welcome To FitKit UI Kit'),
              CustomItemPageView(label: 'Build Your Perfect Body'),
              CustomItemPageView(label: 'Achieve Your Fitness Goals'),
            ],
          ),
          CustomSkipNextBotton(pageController: pageController),
        ],
      ),
    );
  }
}
