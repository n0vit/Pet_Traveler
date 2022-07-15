import'package:flutter/material.dart';
import 'package:pet_traveler/UI/explore_screen.dart';
import 'package:pet_traveler/UI/profile_screen.dart';
import 'package:pet_traveler/features/home_screen/presentation/pages/home_screen.dart';
import 'package:pet_traveler/generated/l10n.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}


class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget> _widgetOptions =  const <Widget>[
     HomeScreen(),
     ExploreScreen(),
     ProfileScreen()
  ];
  @override
  initState(){super.initState();}

  var _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  String headerText = '';

  _headerText(int index) {
    if (index == 0) {
      headerText = S.of(context).homeHeadline;
    }
    if (index == 1) {
      headerText = S.of(context).account;
    }
    if (index == 2) {
      headerText = S.of(context).srchAdults;
    }

    return headerText;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _widgetOptions.elementAt(_selectedIndex),
    bottomNavigationBar: NavigationBar(
      selectedIndex: _selectedIndex,
      animationDuration: const Duration(milliseconds: 500),
      elevation: 2,
      onDestinationSelected: _onItemTapped,
      destinations: const [
    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.explore), label: 'Explore'),
    NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
    ],),
    );

  }
}

    