class ChatMessage {
  final String userId;
  final String text;
  final bool isMe;
  final DateTime time;

  ChatMessage({required this.userId, required this.text, required this.isMe, required this.time});
}

final chatMessagesExample = [
  ChatMessage(userId: 'u1', text: 'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industrys standard dummy text ever since the 1500s an unknown printer took a galley of type and scramb.', isMe: false, time: DateTime.now()),
  ChatMessage(userId: 'u1', text: 'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing', isMe: true, time: DateTime.now()),
   ChatMessage(userId: 'u1', text: 'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industrys standard dummy text ever since the 1500s an unknown printer took a galley of type and scramb.', isMe: false, time: DateTime.now()),
  ChatMessage(userId: 'u1', text: 'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing', isMe: true, time: DateTime.now()),
   ChatMessage(userId: 'u1', text: 'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industrys standard dummy text ever since the 1500s an unknown printer took a galley of type and scramb.', isMe: false, time: DateTime.now()),
  ChatMessage(userId: 'u1', text: 'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing', isMe: true, time: DateTime.now()),
];