import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_app/widgets/task_card.dart';
import 'package:task_app/widgets/heading_text.dart';

import '../utils.dart';

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
            SizedBox(height: 20),
            MyDashboard(),
            SizedBox(height: 20),
            Today(),
          ],
        ),
      ),
    );
  }
}

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hi, Steven',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            const SizedBox(height: 7),
            Text(
              'Let\'s make this day productive',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey[900],
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey.shade300, spreadRadius: 1)],
          ),
          child: const CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('images/avatar.png'),
          ),
        ),
      ],
    );
  }
}

class MyDashboard extends StatelessWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingText('My Tasks'),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DashboardCard(
                    label: 'Completed',
                    count: 86,
                    image: Image.asset(
                      'images/iMac.png',
                      scale: 2,
                    ),
                    color: Colors.lightBlue[200],
                  ),
                  DashboardCard(
                    label: 'Cancelled',
                    count: 86,
                    icon: Icon(Icons.cancel_rounded),
                    color: Colors.red[300],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DashboardCard(
                    label: 'Pending',
                    count: 86,
                    icon: Icon(Icons.av_timer_rounded),
                    color: Colors.deepPurple[300],
                  ),
                  DashboardCard(
                    label: 'On',
                    count: 67,
                    image: Image.asset(
                      'images/calendar.png',
                      scale: 2,
                    ),
                    color: Colors.green[200],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String label;
  final int count;
  final Image? image;
  final Icon? icon;
  final Color? color;

  const DashboardCard({Key? key, required this.label, required this.count, this.image, this.icon, this.color}) : super(key: key);
  // TODO: change to elevated button
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 8,
        right: 8,
      ),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: color ?? Colors.lightBlueAccent,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (image != null) image! else if (icon != null) icon!,
          Text(
            label,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Text(
            count.toString(),
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ],
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
          HeadingText(
            'Today',
          ),
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
    );
  }
}
