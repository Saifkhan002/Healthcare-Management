import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      'message': 'Reminder: Update patient records.',
      'timestamp': '2024-08-06 09:30 AM',
      'category': 'Reminder',
      'status': 'Unread',
    },
    {
      'message': 'New message from Dr. Smith.',
      'timestamp': '2024-08-06 08:45 AM',
      'category': 'Message',
      'status': 'Read',
    },
    // Add more notifications here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8.0),
        itemCount: notifications.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey[300],
          thickness: 1,
        ),
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Card(
            elevation: 4.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              title: Text(
                notification['message']!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: notification['status'] == 'Unread'
                      ? Colors.black
                      : Colors.grey[600],
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Timestamp: ${notification['timestamp']}'),
                  Text('Category: ${notification['category']}'),
                ],
              ),
              onTap: () {
                // Handle notification tap
              },
            ),
          );
        },
      ),
    );
  }
}
