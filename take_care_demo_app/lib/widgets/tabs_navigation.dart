import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages = [];

  @override
  void initState() {
    _pages = [
      {
        'page': "", //Home Page
        'title': 'Home',
      },
      {
        'page': "", //Search Page
        'title': 'Search',
      },
      {
        'page': "", //Messages Page
        'title': 'Messages',
      },
      {
        'page': "", //Bank Page
        'title': 'Bank',
      },
      {
        'page': "", //Settings Page
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
        title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      //shows the widget in the chosen page
      body: _pages[_selectedPageIndex]['page'] as Widget,
      //navigation bars
      bottomNavigationBar: BottomNavigationBar(
        //custom BottomNavigationBar
        onTap: _selectPage,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.chat),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}
