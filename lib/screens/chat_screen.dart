

import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/common/images_services.dart';
import 'package:fitness_app/models/chat_message.dart';
import 'package:fitness_app/tabs/message_tab/message_tab.dart';
import 'package:fitness_app/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ChatScreen extends StatefulWidget {
  final String userId;
  final String userName;
  final String avatar;

  const ChatScreen({super.key, required this.userId, required this.userName, required this.avatar});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final controller = TextEditingController();
  late List<ChatMessage> messages;

  @override
  void initState() {
    super.initState();
    messages = chatMessagesExample.where((e) => e.userId == widget.userId).toList();
  }

  void send() {
    if (controller.text.isEmpty) return;
    setState(() {
      messages.add(ChatMessage(
        userId: widget.userId,
        text: controller.text,
        isMe: true,
        time: DateTime.now(),
      ));
    });
    controller.clear();
  }
int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsServices.white,
       appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: ColorsServices.red,
        centerTitle: true,
          leading: IconButton( onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>MessageTab()));
          },icon: Icon(Icons.arrow_back , color: ColorsServices.white2,size: 30,),),
        title: Column(
          children: [
            Text(
              'Anush Gorak',
              style: GoogleFonts.faustina(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: ColorsServices.white,
              ),
            ),
            SizedBox(height: 2,),
            Text(
              'Online',
              style: GoogleFonts.openSans(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: ColorsServices.white,
              ),
            ),
          ],
        ),

        actions:  [
          Image.asset(ImagesServices.search),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (c, i) =>
                    ChatBubble(text: messages[i].text, isMe: messages[i].isMe),
              ),
            ),
           
          ],
        
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: ColorsServices.white2,
        type: BottomNavigationBarType.fixed,
        currentIndex: 3,
        selectedItemColor: ColorsServices.red,
        unselectedItemColor: ColorsServices.grey,
        onTap: (index) {
         
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
