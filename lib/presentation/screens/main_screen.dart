import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animate_do/animate_do.dart';

class MainScreen extends StatefulWidget {
  final Widget child;

  const MainScreen({
    super.key,
    required this.child,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/customers');
        break;
      case 2:
        context.go('/categories');
        break;
      case 3:
        context.go('/messages');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: SlideInUp(
        duration: const Duration(milliseconds: 800),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.95),
                Colors.white,
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 20,
                offset: const Offset(0, -8),
                spreadRadius: 0,
              ),
            ],
            border: Border(
              top: BorderSide(
                color: Colors.grey.shade200,
                width: 1,
              ),
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: Colors.blue.shade600,
            unselectedItemColor: Colors.grey.shade500,
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_outlined),
                activeIcon: Icon(Icons.dashboard_rounded),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people_outline_rounded),
                activeIcon: Icon(Icons.people_rounded),
                label: 'Customers',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                activeIcon: Icon(Icons.category_rounded),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined),
                activeIcon: Icon(Icons.message_rounded),
                label: 'Messages',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
