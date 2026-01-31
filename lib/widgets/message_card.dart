
import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/models/message_item_data.dart';
import 'package:fitness_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageCard extends StatelessWidget {
  final MessageItem item;
  const MessageCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: ColorsServices.grey3),
          color: ColorsServices.grey4,
        ),
        child: ListTile(
          leading: Stack(children: [
            CircleAvatar( radius: 30,backgroundImage: NetworkImage(item.avatar)),
            Positioned(
              left: 40,
              bottom: 45,
              child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(100)
              ),
            ))          ],),
          title: Text(item.name , style: GoogleFonts.faustina(fontSize: 16, fontWeight: FontWeight.w500, color: ColorsServices.black),),
          subtitle: Text(item.lastMessage,style: GoogleFonts.openSans(fontSize: 12, fontWeight: FontWeight.w400, color: ColorsServices.grey)),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ChatScreen(
                  userId: item.userId,
                  userName: item.name,
                  avatar: item.avatar,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
