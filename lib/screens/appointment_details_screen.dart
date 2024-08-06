import 'package:flutter/material.dart';

class AppointmentDetailsScreen extends StatelessWidget {
  final Map<String, String> appointment;

  AppointmentDetailsScreen({required this.appointment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Patient Information'),
              subtitle: Text('Patient: ${appointment['patient']}'),
            ),
            Divider(),
            ListTile(
              title: Text('Appointment Time'),
              subtitle: Text('Time: ${appointment['time']}'),
            ),
            Divider(),
            ListTile(
              title: Text('Reason for Visit'),
              subtitle: Text('Details: ${appointment['details']}'),
            ),
            Divider(),
            ListTile(
              title: Text('Notes'),
              subtitle: Text(
                  'Notes: Additional notes about the appointment go here.'),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  // Edit notes functionality
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Telemedicine Options'),
              subtitle: Text('Telemedicine options details go here.'),
              trailing: IconButton(
                icon: Icon(Icons.video_call),
                onPressed: () {
                  // Telemedicine functionality
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
