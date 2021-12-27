import 'package:flutter/material.dart';
import 'package:task_app/widgets/task_card.dart';

class HorizontalTaskList extends StatelessWidget {
  const HorizontalTaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '07 : 00',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Expanded(
            child: ListView.builder(
              // physics: ClampingScrollPhysics(),
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => TaskCard(
                width: 1.5,
              ),
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
