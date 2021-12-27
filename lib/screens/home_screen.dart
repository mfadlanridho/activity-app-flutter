import 'package:flutter/material.dart';
import 'package:task_app/widgets/task_card.dart';

import '../utils.dart';
import '../widgets/dashboard.dart';
import '../widgets/welcome_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: kScreenItemsPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            WelcomeCard(),
            SizedBox(height: kSpaceBetweenWidgets),
            MyDashboard(),
            SizedBox(height: kSpaceBetweenWidgets),
            Today(),
          ],
        ),
      ),
    );
  }
}

class Today extends StatelessWidget {
  const Today({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Today',
            style: kHeadingTextStyle,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) => TaskCard(),
            ),
          ),
        ],
      ),
    );
  }
}
