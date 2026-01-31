
import 'package:flutter/material.dart';

class MessageAvatar extends StatelessWidget {
  final String image;
  const MessageAvatar({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundImage: NetworkImage(image ));
  }
}