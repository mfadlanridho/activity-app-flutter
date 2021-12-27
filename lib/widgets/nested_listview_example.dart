import 'package:flutter/material.dart';
import 'package:task_app/widgets/task_card.dart';

class NestedListViewExample extends StatelessWidget {
  const NestedListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => marios(),
      itemCount: 10,
    );
  }
}

class marios extends StatelessWidget {
  const marios({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(left: 8, right: 8),
      height: 80, // THIS HEIGHT IS IMPORTANT
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              top: 8.0,
            ),
            child: Text(
              '07 : 00',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return TaskCard(
                  width: 1.5,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
