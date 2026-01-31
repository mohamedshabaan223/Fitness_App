import 'package:fitness_app/common/colors_services.dart';
import 'package:fitness_app/widgets/format_notification_time.dart';
import 'package:fitness_app/widgets/notification_data_example.dart';
import 'package:flutter/material.dart';


class NotificationCard extends StatelessWidget {
  final NotificationItem item;

  const NotificationCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color:ColorsServices.grey3),
          color: ColorsServices.grey4,
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(item.avatar),
              radius: 20,
            ),
            const SizedBox(width: 10),

            Expanded(
              child: Text(
                item.text,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const SizedBox(width: 8),

            Text(
              formatNotificationTime(item.time),
              style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
            ),
          ],
        ),
      ),
    );
  }
}