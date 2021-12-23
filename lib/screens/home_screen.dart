import 'dart:ui';

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
          Today(),
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
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Steven',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
              SizedBox(
                height: 7,
              ),
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
            child: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/avatar.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class MyDashboard extends StatelessWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              'My Dashboard',
              style: TextStyle(fontSize: 30),
            ),
          ),
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
      ),
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
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today',
              style: TextStyle(fontSize: 30),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return TodayCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TodayCard extends StatelessWidget {
  const TodayCard({Key? key}) : super(key: key);

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

// --------------------
class CustomListItem extends StatelessWidget {
  const CustomListItem({
    Key? key,
    required this.title,
    required this.user,
    required this.viewCount,
  }) : super(key: key);

  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(color: Colors.blue),
            ),
          ),
          _VideoDescription(),
          const Icon(
            Icons.more_vert,
          ),
        ],
      ),
    );
  }
}

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Cleaning Clothes',
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
          Text(
            '07:00 - 07:15',
          ),
        ],
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: <CustomListItem>[
        CustomListItem(
          user: 'Flutter',
          viewCount: 999000,
          title: 'The Flutter YouTube Channel',
        ),
        CustomListItem(
          user: 'Dash',
          viewCount: 884000,
          title: 'Announcing Flutter 1.0',
        ),
      ],
    );
  }
}
