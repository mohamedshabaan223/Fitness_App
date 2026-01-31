import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/common/images_services.dart';

import 'package:fitness_app/tabs/message_tab/message_tab.dart';
import 'package:fitness_app/tabs/notification_tab/notification_tab.dart';
import 'package:fitness_app/tabs/profile_tab/profile_tab.dart';
import 'package:fitness_app/widgets/custom_drawer.dart';


import 'package:fitness_app/widgets/plan_card.dart';
import 'package:fitness_app/widgets/work_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();

}

class _HomeTabState extends State<HomeTab> {
  List<Widget> tabs =[
    HomeTab(),
    NotificationTab(),
    ProfileTab(),
    MessageTab(),
  ];
   final GlobalKey<ScaffoldState> scafold = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafold,
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: ColorsServices.red,
        centerTitle: true,
          leading: InkWell(
            onTap: () {
              scafold.currentState?.openDrawer();
            },
            child: Image.asset(ImagesServices.drawerIcon)),
        title: Text(
          'Home',
          style: GoogleFonts.faustina(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: ColorsServices.white,
          ),
        ),

        actions:  [
          Image.asset(ImagesServices.search),
          SizedBox(width: 10),
        ],
      ),
     body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Workout Exercises',
              style: GoogleFonts.faustina(fontSize: 24, fontWeight: FontWeight.w500, color: ColorsServices.black)
            ),
            SizedBox(height: 15),

            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  WorkCard(
                    title: 'Abs\nPerfection',
                    image:
                        "https://img.freepik.com/premium-photo/barbell-fitness-training-gym_250469-12439.jpg",
                  ),
                  WorkCard(
                    title: 'Good\nCardio',
                    image:
                        "https://tse3.mm.bing.net/th/id/OIP.o0vq2kOIxPfvaQqYJYrIagHaE7?rs=1&pid=ImgDetMain",
                  ),
                  WorkCard(
                    title: 'Arms\nStretching',
                    image:
                        "https://tse1.mm.bing.net/th/id/OIP.EwbatycHx_915hcNzd7vRgHaE8?rs=1&pid=ImgDetMain&o=7&rm=3",
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            Text(
              'Training Plan',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),

            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 0.85,
              children: const [
                PlanCard(title: 'Shoulder Press'),
                PlanCard(title: 'Jogging'),
                PlanCard(title: 'Shoulder Press'),
                PlanCard(title: 'Jogging'),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}