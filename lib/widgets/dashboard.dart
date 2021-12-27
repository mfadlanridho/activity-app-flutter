import 'package:flutter/material.dart';
import 'package:task_app/utils.dart';

class MyDashboard extends StatelessWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My Tasks',
          style: kHeadingTextStyle,
        ),
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
                    icon: const Icon(Icons.cancel_rounded),
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
                    icon: const Icon(Icons.av_timer_rounded),
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
      margin: const EdgeInsets.only(
        bottom: 8,
        right: 8,
      ),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color: color ?? Colors.lightBlueAccent,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (image != null) image! else if (icon != null) icon!,
          Text(
            label,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          Text(
            count.toString(),
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
