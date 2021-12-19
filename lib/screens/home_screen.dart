import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WelcomeCard(),
          MyDashboard(),
        ],
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
    return Container(
      color: Colors.red,
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Steven',
                style: TextStyle(fontSize: 30),
              ),
              Text('Let\'s make this day productive'),
            ],
          ),
          CircleAvatar()
        ],
      ),
    );
  }
}

class MyDashboard extends StatelessWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Dashboard',
            style: TextStyle(fontSize: 30),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    MyDashboardCard(
                      label: 'Completed',
                      count: 86,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyDashboardCard(
                      label: 'Completed',
                      count: 86,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    MyDashboardCard(
                      label: 'Completed',
                      count: 86,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyDashboardCard(
                      label: 'Completed',
                      count: 86,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyDashboardCard extends StatelessWidget {
  final String label;
  final int count;

  const MyDashboardCard({Key? key, required this.label, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'images/iMac.png',
          ),
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
