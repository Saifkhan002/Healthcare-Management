import 'package:flutter/material.dart';

class PatientDetailsScreen extends StatelessWidget {
  final Map<String, String> patient;

  PatientDetailsScreen({required this.patient});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${patient['name']}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: Text('Patient Information'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${patient['name']}'),
                  Text('ID: ${patient['id']}'),
                  Text('Room: ${patient['room']}'),
                ],
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Medical History'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Medical history details go here...'),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  // Edit medical history functionality
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Vitals'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Vitals details go here...'),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  // Edit vitals functionality
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text('IoT Device Data'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('IoT device data details go here...'),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  // Edit IoT device data functionality
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Treatment Plan'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Treatment plan details go here...'),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  // Edit treatment plan functionality
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Notes and Orders'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Notes and orders details go here...'),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  // Add new note functionality
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
