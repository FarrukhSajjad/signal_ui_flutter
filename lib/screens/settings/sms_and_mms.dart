import 'package:flutter/material.dart';
import 'package:signal_ui/widgets/app_bar.dart';

class SMS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context, 'SMS and MMS'),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ListTile(
            title: Text('SMS Disabled'),
            subtitle: Text('Touch to make Signal your deault SMS app'),
          ),
          ListTile(
            title: Text('SMS devilevry reports'),
            subtitle:
                Text('Request a delivery report for each SMS message you send'),
            trailing: Switch(
              onChanged: (value) {},
              value: false,
            ),
          ),
          ListTile(
            title: Text('\'WiFi Calling\' compatibility mode'),
            subtitle: Text('Touch to make Signal your deault SMS app'),
            trailing: Switch(
              onChanged: (value) {},
              value: false,
            ),
          ),
        ],
      ),
    );
  }
}
