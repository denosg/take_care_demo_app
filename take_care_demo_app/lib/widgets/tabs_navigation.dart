import 'package:flutter/material.dart';
import 'package:take_care_demo_app/screens/home_screen.dart';
import 'package:take_care_demo_app/screens/messages_screen.dart';
import 'package:take_care_demo_app/screens/search_screen.dart';
import 'package:take_care_demo_app/screens/settings_screen.dart';
import 'package:take_care_demo_app/screens/wallet_screen.dart';

// ignore: use_key_in_widget_constructors
class TabsNavigation extends StatefulWidget {
  @override
  State<TabsNavigation> createState() => _TabsNavigationState();
}

class _TabsNavigationState extends State<TabsNavigation> {
  List<Map<String, Object>> _pages = [];

  @override
  void initState() {
    _pages = [
      {
        'page': HomeScreen(), //Home Page
        'title': 'TakeCare',
      },
      {
        'page': SearchScreen(), //Search Page
        'title': 'Search',
      },
      {
        'page': MessagesScreen(), //Messages Page
        'title': 'Messages',
      },
      {
        'page': WalletScreen(), //Bank Page
        'title': 'Wallet',
      },
      {
        'page': SettingsScreen(), //Settings Page
        'title': 'Settings',
      },
    ];
    super.initState();
  }

  int _selectedPageIndex = 0;
  //Flutter gives the index automatically of the selected tab
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title on top
        title: Container(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            _pages[_selectedPageIndex]['title'] as String,
            style: TextStyle(
              fontFamily: 'VeganStyle',
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 24,
            ),
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
              //onPressed opens the Personal Profile Page
              onPressed: () {},
              icon: const Icon(Icons.person_rounded, size: 33),
            ),
          )
        ],
      ),
      //shows the widget in the chosen page
      body: _pages[_selectedPageIndex]['page'] as Widget,
      //navigation bars
      bottomNavigationBar: BottomNavigationBar(
        //custom BottomNavigationBar
        onTap: _selectPage,
        iconSize: 30,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          //home
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            activeIcon: Icon(Icons.home_rounded),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          //search
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            activeIcon: Icon(Icons.saved_search_outlined),
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          //messages
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            activeIcon: Icon(Icons.chat_rounded),
            icon: Icon(Icons.chat_outlined),
            label: 'Messages',
          ),
          //wallet
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            activeIcon: Icon(Icons.account_balance_wallet_rounded),
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Wallet',
          ),
          //setings
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            activeIcon: Icon(Icons.settings_rounded),
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
