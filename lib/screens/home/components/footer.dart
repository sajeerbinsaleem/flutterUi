import 'package:flutter/material.dart';

class  Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
             icon: Icon(Icons.school),
            label: 'List',
            
          ),
        ],
        selectedItemColor: Colors.amber[800],
        unselectedItemColor : Colors.green,
        unselectedLabelStyle : TextStyle(color: Colors.green),
        showUnselectedLabels : true,
      );
  }
}