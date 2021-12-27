import 'package:flutter/material.dart';
import 'package:task_app/screens/home_screen.dart';
import 'package:task_app/screens/tasks_screen.dart';
import 'package:task_app/widgets/nested_listview_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      home: const NavigationScreen(),
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: const Color(0xFF12175E),
              displayColor: const Color(0xFF12175E),
            ),
      ),
    );
  }
}

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final _pageOptions = [
    const HomeScreen(),
    const TasksScreen(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBarItems(),
      body: _pageOptions[_selectedIndex],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomNavigationBar bottomNavigationBarItems() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // This is all you need!
      showUnselectedLabels: false,
      showSelectedLabels: false,
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_today,
          ),
          label: 'My Tasks',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_circle,
            size: 50,
          ),
          label: 'New Task',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.note,
          ),
          label: 'Notes',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: 'Settings',
        ),
      ],
    );
  }
}
