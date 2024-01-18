import 'package:appointment_app/features/authentication/presentation/screen/home_screen.dart';
import 'package:appointment_app/screens/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTPScreen extends StatefulWidget {
  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 237, 216, 214),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/logo.png", height: 200, width: 200,),
            SizedBox(
              height: 20,
            ),

          // const Text("ENTER YOUR OTP"),
          // SizedBox(
          //   height: 60,
          // ),
          const Text("Enter the code sent via your phone number"),
          SizedBox(
            height: 20,
          ),
          OTPTextField(
            length: 4,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 45,
            outlineBorderRadius: 15,
            style: TextStyle(
              fontSize: 17
            ),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.box,
            onCompleted: (pin) {
              print("Completed: " + pin);
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyBottomNavigationBar(),
                  ),
                );
            },
          ),
        ],
      ),
    );
  }
}