import 'package:flutter/material.dart';
import 'package:signal_ui/constants.dart';
import 'package:signal_ui/widgets/app_bar.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context, 'Notifications'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      'Messages',
                      style: TextStyle(
                        color: blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  _messageSettings(
                    'Notifications',
                    _switch(),
                  ),
                  _messageSettings(
                    'Sound',
                    Text(
                      'Cheerful',
                      style: TextStyle(color: blue, fontSize: 18.0),
                    ),
                  ),
                  _messageSettings(
                    'Vibrate',
                    _switch(),
                  ),
                  _messageSettings(
                    'LED color',
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: blue,
                    ),
                  ),
                  _messageSettings(
                    'Repeat alerts',
                    Text(
                      'Never',
                      style: TextStyle(color: blue, fontSize: 18.0),
                    ),
                  ),
                  _messageSettings(
                    'Show',
                    Text(
                      'Name and message',
                      style: TextStyle(color: blue, fontSize: 18.0),
                    ),
                  ),
                  _messageSettings(
                    'Priority',
                    Text(
                      '',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Calls',
                      style:
                          TextStyle(color: blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                  _messageSettings(
                    'Notifications',
                    _switch(),
                  ),
                  _messageSettings(
                    'Ringtone',
                    Text(
                      'None',
                      style: TextStyle(color: blue, fontSize: 18.0),
                    ),
                  ),
                  _messageSettings(
                    'Vibrate',
                    _switch(),
                  ),
                ],
              ),
            ),
            //Events
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Events',
                      style:
                          TextStyle(color: blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                  _messageSettings(
                    'Contact joined Signal',
                    _switch(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Switch _switch() {
    return Switch(
      onChanged: (value) {},
      value: true,
    );
  }

  ListTile _messageSettings(String title, Widget settingsWidget) {
    return ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        trailing: settingsWidget);
  }
}
