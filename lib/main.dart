import 'package:flutter/material.dart';
import 'package:task_app/screens/home_screen.dart';
import 'package:task_app/screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final _pageOptions = [
    HomeScreen(),
    TasksScreen(),
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
      print('ye');
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
