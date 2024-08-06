import 'package:flutter/material.dart';

class PrescriptionsScreen extends StatelessWidget {
  final List<Map<String, String>> prescriptions = [
    {
      'name': 'Prescription 1',
      'medication': 'Medication A',
      'dosage': '100mg',
      'frequency': 'Twice a day',
      'note': 'Take after meals',
    },
    {
      'name': 'Prescription 2',
      'medication': 'Medication B',
      'dosage': '50mg',
      'frequency': 'Once a day',
      'note': 'Avoid drinking alcohol',
    },
    // Add more prescriptions here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Prescriptions',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8.0),
        itemCount: prescriptions.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey[300],
          thickness: 1,
        ),
        itemBuilder: (context, index) {
          final prescription = prescriptions[index];
          return Card(
            elevation: 4.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              title: Text(
                prescription['name']!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Medication: ${prescription['medication']}'),
                  Text('Dosage: ${prescription['dosage']}'),
                  Text('Frequency: ${prescription['frequency']}'),
                  if (prescription['note'] != null)
                    Text('Note: ${prescription['note']}',
                        style: TextStyle(color: Colors.grey[600])),
                ],
              ),
              onTap: () {
                // Handle prescription tap
              },
            ),
          );
        },
      ),
    );
  }
}
