import 'package:appointment_app/features/authentication/presentation/screen/otp_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/logo.png"),
            const SizedBox(
              height: 20,
            ),
            // const Text("Registration number"),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Reg number',
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                hintStyle: TextStyle(),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OTPScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
              primary: const Color(0xFFFE0A0A), // Set the background color to red
              ),
            child: const Text(
              'SUBMIT',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ],
        ),
      ),
    );
  }
}