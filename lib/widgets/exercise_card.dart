import 'package:fitness_app/common/colors_services.dart';
import 'package:flutter/material.dart';

class ExerciseList extends StatelessWidget {
  const ExerciseList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          ExerciseCard(title: 'Abs\nPerfection'),
          ExerciseCard(title: 'Good\nCardio'),
          ExerciseCard(title: 'Arms\nStretching'),
        ],
      ),
    );
  }
}

class ExerciseCard extends StatelessWidget {
  final String title;

  const ExerciseCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: const DecorationImage(
          image: NetworkImage(
            'https://images.pexels.com/photos/841130/pexels-photo-841130.jpeg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 8,
            top: 8,
            child: CircleAvatar(
              radius: 14,
              backgroundColor: ColorsServices.red,
              child: const Icon(Icons.add, color: ColorsServices.white2, size: 16),
            ),
          ),
          Positioned(
            left: 8,
            bottom: 8,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}