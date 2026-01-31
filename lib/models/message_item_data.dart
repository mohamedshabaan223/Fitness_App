
class MessageItem {
  final String userId;
  final String name;
  final String avatar;
  final String lastMessage;
  final DateTime time;

  MessageItem({required this.userId, required this.name, required this.avatar, required this.lastMessage, required this.time});
}

final messagesItemsExample = [
  MessageItem(
    userId: 'u1',
    name: 'Anush Gorak',
    avatar: 'https://i.pravatar.cc/150?img=2',
    lastMessage: 'Lorem Ipsum is simply dummy text...',
    time: DateTime.now(),
  ),
  MessageItem(
    userId: 'u2',
    name: 'Anush Gorak',
    avatar: 'https://i.pravatar.cc/150?img=2',
    lastMessage: 'Lorem Ipsum is simply dummy text...',
    time: DateTime.now(),
  ),
  MessageItem(
    userId: 'u3',
    name: 'Anush Gorak',
    avatar: 'https://i.pravatar.cc/150?img=2',
    lastMessage: 'Lorem Ipsum is simply dummy text...',
    time: DateTime.now(),
  ),
  MessageItem(
    userId: 'u4',
    name: 'Anush Gorak',
    avatar: 'https://i.pravatar.cc/150?img=2',
    lastMessage: 'Lorem Ipsum is simply dummy text...',
    time: DateTime.now(),
  ),
];