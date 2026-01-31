

import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isMe;

  const ChatBubble({super.key, required this.text, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        width: 290,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: isMe ? Colors.red : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text( text , style: GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.w500, color: ColorsServices.black), ),
      ),
    );
  }
}
