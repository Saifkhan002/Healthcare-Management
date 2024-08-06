import 'package:flutter/material.dart';

class PatientOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Overview',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSummaryCard(
              title: 'Number of Patients',
              value: '20',
              icon: Icons.person,
              color: Colors.blueAccent,
            ),
            SizedBox(height: 16.0),
            _buildSummaryCard(
              title: 'Critical Cases',
              value: '3',
              icon: Icons.warning,
              color: Colors.redAccent,
            ),
            SizedBox(height: 16.0),
            _buildSummaryCard(
              title: 'Total Appointments',
              value: '45',
              icon: Icons.calendar_today,
              color: Colors.greenAccent,
            ),
            SizedBox(height: 16.0),
            _buildSummaryCard(
              title: 'Upcoming Appointments',
              value: '5',
              icon: Icons.access_alarm,
              color: Colors.orangeAccent,
            ),
            SizedBox(height: 16.0),
            _buildSummaryCard(
              title: 'Recent Activities',
              value: '12',
              icon: Icons.history,
              color: Colors.purpleAccent,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryCard({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      elevation: 4.0,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(value,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
