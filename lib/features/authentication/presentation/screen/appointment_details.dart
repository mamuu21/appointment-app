import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFE0A0A),
        foregroundColor: Colors.white,
        title: Text("Appointment Details", style: TextStyle(fontSize: 18),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              
            ),
          ],
        ),
      ),
    );
  }
}