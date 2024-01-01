// ignore_for_file: prefer_const_constructors

import 'package:appointment_app/features/authentication/presentation/screen/appointment_details.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool btn1 = false;
  bool btn2 = false;
  bool btn3 = false;
  bool btn4 = false;
  bool btn5 = false;

  onhoverAction(x) {
    switch (x) {
      case 1:
        setState(() {
          btn1 = true;
          btn2 = false;
          btn3 = false;
          btn4 = false;
          btn5 = false;
        });
        break;
      case 2:
        setState(() {
          btn1 = false;
          btn2 = true;
          btn3 = false;
          btn4 = false;
          btn5 = false;
        });
        break;
      case 3:
        setState(() {
          btn1 = false;
          btn2 = false;
          btn3 = true;
          btn4 = false;
          btn5 = false;
        });
        break;
      case 4:
        setState(() {
          btn1 = false;
          btn2 = false;
          btn3 = false;
          btn4 = true;
          btn5 = false;
        });
        break;
      case 5:
        setState(() {
          btn1 = false;
          btn2 = false;
          btn3 = false;
          btn4 = false;
          btn5 = true;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFE0A0A),
        elevation: 0,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
              icon: Icon(Icons.menu))
          ],
        title: Text("Home", style: TextStyle(fontSize: 18),),

      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle drawer item click
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle drawer item click
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {
                        onhoverAction(1);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AppointmentScreen(),
                            ));
                      },
                      // onHover: (value) {
                      //   onhoverAction(1);
                      // },
                      child: Card(
                        elevation: 4,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Upcoming (2)",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: btn1 ? Colors.red : Colors.black),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Icon(Icons.calendar_view_day_rounded),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {
                        onhoverAction(2);
                      },
                      child: Card(
                        elevation: 4,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Attended (0)",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: btn2 ? Colors.red : Colors.black),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Icon(Icons.calendar_view_day_rounded),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {
                        onhoverAction(3);
                      },
                      child: Card(
                        elevation: 4,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Cancelled (0)",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: btn3 ? Colors.red : Colors.black),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Icon(Icons.abc),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {
                        onhoverAction(4);
                      },
                      child: Card(
                        elevation: 4,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Missed (1)",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: btn4 ? Colors.red : Colors.black),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Icon(Icons.abc),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: InkWell(
                  onTap: () {
                    onhoverAction(5);
                  },
                  child: Card(
                    elevation: 4,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Pending (3)",
                          style: TextStyle(
                              fontSize: 15,
                              color: btn5 ? Colors.red : Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(Icons.abc),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
