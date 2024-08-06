import 'package:flutter/material.dart';

import 'patient_details.dart';

class PatientListScreen extends StatefulWidget {
  @override
  _PatientListScreenState createState() => _PatientListScreenState();
}

class _PatientListScreenState extends State<PatientListScreen> {
  final List<Map<String, String>> patients = [
    {
      'name': 'John Doe',
      'id': '001',
      'room': '101',
      'age': '45',
      'gender': 'Male',
      'status': 'Admitted'
    },
    {
      'name': 'Jane Smith',
      'id': '002',
      'room': '102',
      'age': '34',
      'gender': 'Female',
      'status': 'Discharged'
    },
    {
      'name': 'Emily Johnson',
      'id': '003',
      'room': '103',
      'age': '29',
      'gender': 'Female',
      'status': 'Admitted'
    },
    {
      'name': 'Michael Brown',
      'id': '004',
      'room': '104',
      'age': '56',
      'gender': 'Male',
      'status': 'Under Observation'
    },
    {
      'name': 'Olivia Davis',
      'id': '005',
      'room': '105',
      'age': '62',
      'gender': 'Female',
      'status': 'Admitted'
    },
    {
      'name': 'William Garcia',
      'id': '006',
      'room': '106',
      'age': '40',
      'gender': 'Male',
      'status': 'Discharged'
    },
    {
      'name': 'Sophia Martinez',
      'id': '007',
      'room': '107',
      'age': '51',
      'gender': 'Female',
      'status': 'Admitted'
    },
    {
      'name': 'James Wilson',
      'id': '008',
      'room': '108',
      'age': '67',
      'gender': 'Male',
      'status': 'Under Observation'
    },
    {
      'name': 'Ava Anderson',
      'id': '009',
      'room': '109',
      'age': '30',
      'gender': 'Female',
      'status': 'Admitted'
    },
    {
      'name': 'Ethan Thomas',
      'id': '010',
      'room': '110',
      'age': '55',
      'gender': 'Male',
      'status': 'Discharged'
    },
    {
      'name': 'Isabella Taylor',
      'id': '011',
      'room': '111',
      'age': '48',
      'gender': 'Female',
      'status': 'Under Observation'
    },
    {
      'name': 'Lucas Jackson',
      'id': '012',
      'room': '112',
      'age': '38',
      'gender': 'Male',
      'status': 'Admitted'
    },
    {
      'name': 'Mia White',
      'id': '013',
      'room': '113',
      'age': '27',
      'gender': 'Female',
      'status': 'Discharged'
    },
    {
      'name': 'Noah Harris',
      'id': '014',
      'room': '114',
      'age': '49',
      'gender': 'Male',
      'status': 'Admitted'
    },
    {
      'name': 'Charlotte Clark',
      'id': '015',
      'room': '115',
      'age': '60',
      'gender': 'Female',
      'status': 'Under Observation'
    },
    // Add more patients here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Patient List',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo, // Vibrant color for the app bar
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Patients',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                prefixIcon: Icon(Icons.search, color: Colors.indigo),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: patients.length,
              separatorBuilder: (context, index) => Divider(
                color: Colors.grey[300],
                thickness: 1,
              ),
              itemBuilder: (context, index) {
                final patient = patients[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo,
                    child: Text(
                      patient['name']![0],
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  title: Text(
                    patient['name']!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'ID: ${patient['id']} - Room: ${patient['room']}',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,
                      size: 16, color: Colors.grey[600]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PatientDetailsScreen(patient: patient),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add patient functionality
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
