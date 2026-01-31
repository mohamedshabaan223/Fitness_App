String formatNotificationTime(DateTime dateTime) {
  final now = DateTime.now();
  final difference = now.difference(dateTime);

  // in day
  if (difference.inSeconds < 60) {
    return 'Just now';
  }
  if (difference.inMinutes < 60) {
    return '${difference.inMinutes} min ago';
  }
  if (difference.inHours < 24 && now.day == dateTime.day) {
    return '${difference.inHours} h ago';
  }

  //  yesterday
  final yesterday = DateTime(now.year, now.month, now.day - 1);

  final dateOnly = DateTime(dateTime.year, dateTime.month, dateTime.day);

  if (dateOnly == yesterday) {
    return 'Yesterday';
  }
  // less than a week
  if (difference.inDays < 7) {
    return '${difference.inDays} d ago';
  }

  // complete date
  return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
}