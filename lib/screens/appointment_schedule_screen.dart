import 'package:flutter/material.dart';

import 'appointment_details_screen.dart';

class AppointmentScheduleScreen extends StatelessWidget {
  final List<Map<String, String>> appointments = [
    {
      'time': '9:00 AM',
      'patient': 'John Doe',
      'details': 'General Checkup',
      'location': 'Room 101',
      'doctor': 'Dr. Smith',
      'status': 'Scheduled',
    },
    {
      'time': '10:00 AM',
      'patient': 'Jane Smith',
      'details': 'Follow-up',
      'location': 'Room 102',
      'doctor': 'Dr. Jones',
      'status': 'Completed',
    },
    // Add more appointments here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Appointment Schedule',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8.0),
        itemCount: appointments.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey[300],
          thickness: 1,
        ),
        itemBuilder: (context, index) {
          final appointment = appointments[index];
          return Card(
            elevation: 4.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              title: Text(
                '${appointment['time']} - ${appointment['patient']}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Details: ${appointment['details'] ?? 'N/A'}'),
                  Text('Location: ${appointment['location'] ?? 'N/A'}'),
                  Text('Doctor: ${appointment['doctor'] ?? 'N/A'}'),
                  Text(
                    'Status: ${appointment['status'] ?? 'N/A'}',
                    style: TextStyle(
                      color: (appointment['status'] ?? '') == 'Completed'
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppointmentDetailsScreen(
                      appointment: appointment,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
