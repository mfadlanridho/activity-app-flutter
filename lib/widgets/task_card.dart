import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.ac_unit),
      title: Text(
        'Cleaning Clothes',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Text('07:00 - 07:15'),
      trailing: Icon(Icons.more_vert),
    );
  }
}
