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
          // TODO: change to gridview
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ImageCard(
                      label: 'Completed',
                      count: 86,
                      image: Image.asset(
                        'images/iMac.png',
                        scale: 2,
                      ),
                    ),
                    IconCard(
                      label: 'Completed',
                      count: 86,
                      icon: Icon(Icons.cancel_rounded),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    IconCard(
                      label: 'Pending',
                      count: 86,
                      icon: Icon(Icons.av_timer_rounded),
                    ),
                    ImageCard(
                      label: 'On',
                      count: 67,
                      image: Image.asset(
                        'images/calendar.png',
                        scale: 2,
                      ),
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

class ImageCard extends StatelessWidget {
  final Image image;
  final String label;
  final int count;

  const ImageCard({Key? key, required this.label, required this.count, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 8,
        right: 8,
      ),
      padding: EdgeInsets.all(20),
      color: Colors.lightBlueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
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

class IconCard extends StatelessWidget {
  final Icon icon;
  final String label;
  final int count;

  const IconCard({Key? key, required this.label, required this.count, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 8,
        right: 8,
      ),
      padding: EdgeInsets.all(20),
      color: Colors.lightBlueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
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
