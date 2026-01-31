import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/widgets/notification_card.dart';
import 'package:fitness_app/widgets/notification_data_example.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationTab extends StatelessWidget {
  const NotificationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsServices.red,
        centerTitle: true,
          leading: IconButton( onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
          },icon: Icon(Icons.arrow_back , color: ColorsServices.white2,size: 30,),),
        title: Text(
          'Notification',
          style: GoogleFonts.faustina(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: ColorsServices.white,
          ),
        ),

        actions: const [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: ListView.builder(
        itemCount: notificationsDataExample.length,
        itemBuilder: (context, index) =>
            NotificationCard(item: notificationsDataExample[index]),
      ),
    );
  }
}
