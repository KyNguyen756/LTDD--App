import 'package:demo/template/explore_screen.dart';
import 'package:demo/template/my_trips.dart';
import 'package:flutter/material.dart';

class navBar extends StatefulWidget {

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int myIndex = 0;
  List<Widget> widgetlist = [
    Explore_Screen(),
    My_Trips(),
    Text("Test")
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: widgetlist[myIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.compass_calibration,),
            label: 'Explore',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'My trip',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ]
      ),
    );
  }
}