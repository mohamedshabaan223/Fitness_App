import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/common/images_services.dart';
import 'package:fitness_app/models/message_item_data.dart';
import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/widgets/message_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MessageTab extends StatelessWidget {
  const MessageTab({super.key});

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
          'Messages',
          style: GoogleFonts.faustina(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: ColorsServices.white,
          ),
        ),

        actions:  [
          Image.asset(ImagesServices.search),
        ],
      ),
      body: ListView.builder(
        itemCount: messagesItemsExample.length,
        itemBuilder: (context, index) =>
            MessageCard(item: messagesItemsExample[index]),
      ),
    );
  }
}