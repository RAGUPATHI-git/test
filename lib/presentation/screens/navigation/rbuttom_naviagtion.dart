import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';

class RBottomNavigation extends StatefulWidget {
  @override
  _RBottomNavigationState createState() => _RBottomNavigationState();
}

class _RBottomNavigationState extends State<RBottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Center(child: Text("Home", style: TextStyle(fontSize: 24))),
    Center(child: Text("Search", style: TextStyle(fontSize: 24))),
    Center(child: Text("Profile", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: _screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        height: 60,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.blueAccent),
          Icon(Icons.search, size: 30, color: Colors.blueAccent),
          Icon(Icons.person, size: 30, color: Colors.blueAccent),
        ],
        animationDuration: Duration(milliseconds: 300),
        animationCurve: Curves.easeInOut,
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

// bottom navigation 2

class FancyBottomNav extends StatefulWidget {
  @override
  _FancyBottomNavState createState() => _FancyBottomNavState();
}

class _FancyBottomNavState extends State<FancyBottomNav> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Center(child: Text("Home", style: TextStyle(fontSize: 24))),
    Center(child: Text("Search", style: TextStyle(fontSize: 24))),
    Center(child: Text("Add", style: TextStyle(fontSize: 24))),
    Center(child: Text("Notifications", style: TextStyle(fontSize: 24))),
    Center(child: Text("Profile", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.blueAccent,
        style: TabStyle.react,
        items: const [
          TabItem(icon: Icons.home, title: "Home"),
          TabItem(icon: Icons.search, title: "Search"),
          TabItem(icon: Icons.add, title: "Add"),
          TabItem(icon: Icons.notifications, title: "Alerts"),
          TabItem(icon: Icons.person, title: "Profile"),
        ],
        initialActiveIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

// bottom navigation 3

class GlassBottomNav extends StatefulWidget {
  @override
  _GlassBottomNavState createState() => _GlassBottomNavState();
}

class _GlassBottomNavState extends State<GlassBottomNav> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Center(child: Text("Home", style: TextStyle(fontSize: 24))),
    Center(child: Text("Messages", style: TextStyle(fontSize: 24))),
    Center(child: Text("Notifications", style: TextStyle(fontSize: 24))),
    Center(child: Text("Profile", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade100,
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 2),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavyBar(
            backgroundColor: Colors.white.withOpacity(0.9),
            selectedIndex: _currentIndex,
            showElevation: true,
            onItemSelected: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavyBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),
                  activeColor: Colors.blue),
              BottomNavyBarItem(
                  icon: Icon(Icons.message),
                  title: Text("Messages"),
                  activeColor: Colors.green),
              BottomNavyBarItem(
                  icon: Icon(Icons.notifications),
                  title: Text("Alerts"),
                  activeColor: Colors.red),
              BottomNavyBarItem(
                  icon: Icon(Icons.person),
                  title: Text("Profile"),
                  activeColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

// bottom navigation 4

class AnimatedBottomNavBar extends StatefulWidget {
  @override
  _AnimatedBottomNavBarState createState() => _AnimatedBottomNavBarState();
}

class _AnimatedBottomNavBarState extends State<AnimatedBottomNavBar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text("Home")),
          Center(child: Text("Chat")),
          Center(child: Text("Profile")),
        ],
      ),
      bottomNavigationBar: MotionTabBar(
        // controller: _tabController,
        labels: ["Home", "Chat", "Profile"],
        initialSelectedTab: "Home",
        icons: [Icons.home, Icons.chat, Icons.person],
        tabSize: 50,
        tabBarHeight: 60,
        textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        tabIconColor: Colors.grey,
        tabIconSelectedColor: Colors.blueAccent,
        tabSelectedColor: Colors.blueAccent.withOpacity(0.2),
        onTabItemSelected: (int value) {
          setState(() {
            _tabController!.index = value;
          });
        },
      ),
    );
  }
}
