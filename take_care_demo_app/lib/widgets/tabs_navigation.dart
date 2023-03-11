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
        'page': "",
        'title': 'Search',
      },
      {
        'page': const CategoriesScreen(),
        'title': 'Messages',
      },
      {
        'page': const CategoriesScreen(),
        'title': 'Bank',
      },
      {
        'page': const CategoriesScreen(),
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
        title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.amber,
            icon: Icon(Icons.category_rounded),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.amber,
            icon: Icon(Icons.favorite_rounded),
            label: 'Favorites',
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
