import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Mainpage extends StatefulWidget {
  const Mainpage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<Mainpage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) => 
  Scaffold(
  bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        selectedFontSize: 12,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black),
          label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.black),
          label: 'search'),
        BottomNavigationBarItem(
          icon:Icon(Icons.library_add_outlined, color: Colors.black),
          label: 'Your Library'),
        BottomNavigationBarItem(
          icon:Icon(Icons.music_note_outlined, color: Colors.black), label: 'Premium'),
          ],
        
    )
  );
}