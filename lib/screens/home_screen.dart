import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/common/images_services.dart';
import 'package:fitness_app/tabs/home_tab/home_tab.dart';
import 'package:fitness_app/tabs/message_tab/message_tab.dart';
import 'package:fitness_app/tabs/notification_tab/notification_tab.dart';
import 'package:fitness_app/tabs/profile_tab/profile_tab.dart';




import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    List<Widget> tabs =[
    HomeTab(),
    NotificationTab(),
    ProfileTab(),
    MessageTab(),
  ];
  int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      

      body:tabs[currentIndex],

      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: ColorsServices.white2,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: ColorsServices.red,
        unselectedItemColor: ColorsServices.grey,
        onTap: (index) {
         
          setState(() {
             currentIndex = index;
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
      )
    );
  }
}
