import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sebha_app2/constants/mainconstants.dart';
import 'package:sebha_app2/view/home/screens/azkarscreen.dart';
import 'package:sebha_app2/view/home/screens/homescreen.dart';
import 'package:sebha_app2/view/home/screens/sebhascreen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _selectedIndix= 0 ;
List pages=[
  HomeScreen(),
  AzkarScreen(),
  SebhaScreen(),
  ];
  void _onItemPressed(int index) {
    setState(() {
      _selectedIndix = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndix],

bottomNavigationBar: BottomNavigationBar(
  items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      label: "",
      icon: SvgPicture.asset("assets/icons/homegray.svg"),
      activeIcon: SvgPicture.asset("assets/icons/homegreen.svg")),

    BottomNavigationBarItem(
        label: "",
        icon: SvgPicture.asset("assets/icons/Book.svg"),
        activeIcon: SvgPicture.asset("assets/icons/Bookgreen.svg")),
    BottomNavigationBarItem(
        label: "",
        icon: SvgPicture.asset("assets/icons/sabahgray.svg"),
        activeIcon: SvgPicture.asset("assets/icons/sabhagreen.svg")),
],
  currentIndex: _selectedIndix,
onTap: _onItemPressed,
  backgroundColor: backgroundColor,
  iconSize: 33,
  showSelectedLabels: false,
  showUnselectedLabels: false,
  elevation: 10,

  ),

    );
  }
}


