import 'package:flutter/material.dart';
import 'package:pets_app/screens/home_page.dart';
import 'package:pets_app/screens/search_screen.dart';

import 'fav_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPageIndex = 0;

  final List<Map<String, Object>> _pages = [
    {'page': HomePage(), 'title': 'Home'},
    {'page': FavoriteScreen(), 'title': 'Your Favorites'},
    {'page': SearchScreen(), 'title': 'Search'}
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      //  backgroundColor: Colors.transparent,
        body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar: Container(
           
             decoration: BoxDecoration(
              
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 15.0),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              child: BottomNavigationBar(
                  backgroundColor: Colors.white,
                  onTap: _selectPage,
                  unselectedItemColor: Colors.grey.shade500,
                  selectedItemColor: Colors.cyan,
                  currentIndex: _selectedPageIndex,
                  type: BottomNavigationBarType.fixed,
                  items: [
                    BottomNavigationBarItem(
                      title: Text('Home'),
                      icon: Icon(Icons.home),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    BottomNavigationBarItem(
                      title: Text('Articles'),
                      icon: Icon(Icons.category),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    BottomNavigationBarItem(
                      title: Text('Search'),
                      icon: Icon(Icons.search),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    BottomNavigationBarItem(
                      title: Text('Notifications'),
                      icon: Icon(Icons.notifications),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    BottomNavigationBarItem(
                      title: Text('Profile'),
                      icon: Icon(Icons.star),
                      backgroundColor: Theme.of(context).primaryColor,
                    )
                  ]),
            )));
  }
}
