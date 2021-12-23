import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task_app/widgets/basic_calendar.dart';
import 'package:task_app/utils.dart';
import 'package:task_app/widgets/heading_text.dart';

import '../widgets/task_card.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: kScreenItemsPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadingText('Tasks'),
            TableBasicsExample(),
            ListTile(
              leading: Text(
                'Today',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              trailing: Text(
                '09 h 45 min',
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Text('07 : 00'),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return TaskCard();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
