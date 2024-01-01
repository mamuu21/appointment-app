
import 'package:appointment_app/components/authButton.dart';
import 'package:appointment_app/components/constants.dart';
import 'package:appointment_app/components/curve.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String id = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  String username = '';
  String password = '';

  final _formKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: Alignment.bottomRight,
        fit: StackFit.expand,
        children: [
          // First Child in the stack
          SizedBox(height: 100,),
          ClipPath(
            clipper: ImageClipper(),
            child: Image.asset(
              'assets/logo.png',
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),

          Positioned(
            height: MediaQuery.of(context).size.height * 0.67,
            width: MediaQuery.of(context).size.width,
            child: Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.67,
                    maxWidth: MediaQuery.of(context).size.width,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    
                      // Second Column
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              // controller: userNameController,
                              // validator: validateUsername,
                              // keyboardType: TextInputType.phone,
                              style: Theme.of(context).textTheme.bodyMedium,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(18.0),
                                filled: true,
                                fillColor: kGinColor,
                                prefixIcon: Icon(
                                  Icons.person_outline,
                                  size: 24.0,
                                  color: kDarkGreenColor,
                                ),
                                hintText: 'Reg no.',
                                hintStyle: GoogleFonts.poppins(
                                  color: kDarkGreenColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.0,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: kGinColor),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide:
                                      BorderSide(color: kDarkGreenColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Third Column
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          bottom: 20.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            AuthenticationButton(
                              label: 'Submit',
                              onPressed: () {
                                _submit();
                               
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
    }
  }

}
