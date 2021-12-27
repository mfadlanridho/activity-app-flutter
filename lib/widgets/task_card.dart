import 'dart:ffi';

import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final double? width;
  const TaskCard({Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        /// Just an example, but this makes sure, that since you set a fixed width like 300.0, on small screens this won't get too big. For example by setting a maxWidth constraint like this, its width will be 300.0, but at max as big as 1 / 3 of the screen width so it gets smaller on small screen sizes
        maxWidth: MediaQuery.of(context).size.width / (width ?? 1),
      ),

      // TODO: change ListTile to container to
      child: const ListTile(
        shape: RoundedRectangleBorder(),
        leading: Icon(Icons.ac_unit),
        title: Text(
          'Cleaning Clothes',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        subtitle: Text('07:00 - 07:15'),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
