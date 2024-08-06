import 'package:flutter/material.dart';
import 'package:healthcare/screens/notifications_screen.dart';
import 'package:healthcare/screens/patient_overview_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'appointment_schedule_screen.dart';
import 'patient_list.dart';
import 'prescriptions_screen.dart';
import 'package:lottie/lottie.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard',
            style:
                GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.w600)),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _quickAccessButton(context, Icons.search, 'Patient Search',
                      PatientListScreen()),
                  _quickAccessButton(context, Icons.medication, 'Prescriptions',
                      PrescriptionsScreen()),
                  _quickAccessButton(context, Icons.bar_chart, 'Patient Charts',
                      PatientChartsScreen()),
                ],
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: _dashboardCard(
                      context,
                      'Patient Overview',
                      'Number of Patients: 20\nCritical Cases: 3',
                      PatientOverviewScreen(),
                      'assets/overview.json',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _dashboardCard(
                      context,
                      'Appointment Schedule',
                      '9:00 AM - John \n10:00 AM - Jane Smith',
                      AppointmentScheduleScreen(),
                      'assets/appointment.json',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: _dashboardCard(
                      context,
                      'Notifications',
                      'Reminder: Update patient records.\nNew message from Dr. Smith.',
                      NotificationsScreen(),
                      'assets/notification.json',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _dashboardCard(
                      context,
                      'Patient Summary',
                      'Critical Cases: 3\nUpcoming Appointments: 10',
                      null,
                      'assets/summary.json',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _quickAccessButton(
      BuildContext context, IconData icon, String label, Widget screen) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.indigo,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Column(
        children: [
          Icon(icon, size: 28),
          const SizedBox(height: 4),
          Text(label, style: GoogleFonts.roboto(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _dashboardCard(BuildContext context, String title, String content,
      Widget? screen, String lottiePath) {
    return InkWell(
      onTap: screen != null
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screen),
              );
            }
          : null,
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Lottie.asset(
                lottiePath,
                height: 90,
                width: double.infinity,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(title,
                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.indigo)),
              const SizedBox(height: 8),
              Text(content, style: GoogleFonts.roboto(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}

class PatientChartsScreen extends StatelessWidget {
  const PatientChartsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient Charts'),
      ),
      body: const Center(
        child: Text('Patient Charts Screen'),
      ),
    );
  }
}
