import 'dart:math';

import 'package:flutter/material.dart';
import 'package:signal_ui/constants.dart';

class ChatScreen extends StatefulWidget {
  final MaterialColor colour;
  final String personName;
  ChatScreen({this.personName, this.colour});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Color color = Colors.primaries[Random().nextInt(Colors.primaries.length)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 12,
              child: Text(widget.personName[0]),
              backgroundColor: Colors.grey[300],
            ),
            SizedBox(
              width: 8,
            ),
            Text(widget.personName),
          ],
        ),
        actions: [
          Icon(
            Icons.video_call,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.call,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // color: Colors.red[400],
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                CircleAvatar(
                  backgroundColor: color,
                  radius: 80,
                  child: Text(
                    widget.personName[0],
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.personName,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'PhoneNumber Here',
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.all(8),
                    height: 55,
                    width: MediaQuery.of(context).size.width - 100,
                    child: Row(
                      children: [
                        Icon(Icons.sticky_note_2),
                        SizedBox(
                          width: 8,
                        ),
                        Flexible(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Signal Message',
                            ),
                            enabled: true,
                          ),
                        ),
                        Icon(
                          Icons.camera_alt_outlined,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.mic_rounded,
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: blue,
                    child: Icon(
                      Icons.add,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
