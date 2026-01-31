

import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/widgets/exercise_card.dart';
import 'package:fitness_app/widgets/followers_list.dart';
import 'package:fitness_app/widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsServices.red,
        centerTitle: true,
          leading: IconButton( onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
          },icon: Icon(Icons.arrow_back , color: ColorsServices.white2,size: 30,),),
        actions: const [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          ProfileHeader(),
          SizedBox(height: 16),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'My Exercises',
              style: GoogleFonts.faustina(fontSize: 24, color: ColorsServices.black, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 12),
          ExerciseList(),

          SizedBox(height: 20),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Followers',
              style: GoogleFonts.faustina(fontSize: 24, color: ColorsServices.black, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 12),
          FollowersList(),
          SizedBox(height: 24),
        ],
      ),
    ));
  }
}
    

