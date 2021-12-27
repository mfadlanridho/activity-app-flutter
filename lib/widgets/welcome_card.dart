import 'package:flutter/material.dart';

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
