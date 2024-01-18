import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Upcoming'),
    Tab(text: 'Completed'),
    Tab(text: 'Cancelled'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'My Bookings',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                // color: Colors.red, // Set tab bar background color to red
                child: TabBar(
                  labelColor: Colors.black, // Set text color of selected tab to white
                  indicatorColor: Colors.red,
                  tabs: myTabs,
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    UpcomingScreen(),
                    CompletedScreen(),
                    CancelledScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class UpcomingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Upcoming Screen'),
    );
  }
}

class CompletedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Completed Screen'),
    );
  }
}

class CancelledScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Cancelled Screen'),
    );
  }
}