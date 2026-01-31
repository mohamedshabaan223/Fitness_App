
import 'package:flutter/material.dart';

class NotificationAvatar extends StatelessWidget {
  final String image;
  const NotificationAvatar({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundImage: NetworkImage(image));
  }
}