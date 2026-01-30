import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/common/images_services.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
        backgroundColor: ColorsServices.white2,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: ColorsServices.red,
        unselectedItemColor: ColorsServices.grey,
        onTap: (index) {
          currentIndex = index;
          setState(() {
            
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(ImagesServices.home)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(ImagesServices.notification)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(ImagesServices.user)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(ImagesServices.message)),
            label: '',
          ),
        ],
      );
  }
}