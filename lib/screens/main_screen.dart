import 'package:flutter/material.dart';
import 'package:flutter_wallet/screens/cards_page.dart';
import 'package:flutter_wallet/screens/history_page.dart';
import 'package:flutter_wallet/screens/home_page.dart';
import 'package:flutter_wallet/screens/profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const [
          HomePage(),
          HistoryPage(),
          CardsPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black38,
        currentIndex: _selectedIndex,
        onTap: onTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blueAccent),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.money, color: Colors.blueAccent),
              label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_sharp, color: Colors.blueAccent),
              label: 'Cards',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.blueAccent),
              label: 'Profile'),
        ],
      ),
    );
  }
}
