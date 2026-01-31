
import 'package:fitness_app/widgets/items.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFFC62828),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 10),
        child: Column(
          children: [
            SizedBox(height: 60),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Text(
                'UN',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'User Name',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Divider(color: Colors.white38, indent: 30, endIndent: 30),
            SizedBox(height: 20),

            Items(title: 'Home'),
            Items(title: 'About'),
            Items(title: 'Exercises'),
            Items(title: 'Prices'),
            Items(title: 'Contact'),
            Items(title: 'More'),

            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                'Logout',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
