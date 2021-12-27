import 'package:flutter/material.dart';
import 'package:task_app/widgets/basic_calendar.dart';
import 'package:task_app/utils.dart';
import 'package:task_app/widgets/horizontal_task_list.dart';
import 'package:task_app/widgets/nested_listview_example.dart';
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
            const Text(
              'Tasks',
              style: kHeadingTextStyle,
            ),
            TableBasicsExample(),
            const SizedBox(height: kSpaceBetweenWidgets),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Today', style: TextStyle(fontSize: 25)),
                Text('09 h 45 min'),
              ],
            ),
            Expanded(
              child: NestedListViewExample(),
            )
          ],
        ),
      ),
    );
  }
}
