import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:signal_ui/constants.dart';

class Chat extends StatelessWidget {
  const Chat({
    Key key,
    @required String personName,
    this.onTap,
  })  : _personName = personName,
        super(key: key);

  final String _personName;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actions: [
        IconSlideAction(
          foregroundColor: Colors.white,
          color: archiveBg,
          icon: Icons.archive,
        )
      ],
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(
          backgroundColor:
              Colors.primaries[Random().nextInt(Colors.primaries.length)],
          radius: 25,
          child: Text(
            _personName[0],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        title: Text(
          _personName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        subtitle: Text('last message...'),
      ),
    );
  }
}
