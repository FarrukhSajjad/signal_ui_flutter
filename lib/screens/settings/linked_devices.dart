import 'package:flutter/material.dart';
import 'package:signal_ui/constants.dart';
import 'package:signal_ui/widgets/app_bar.dart';

class LinkedDevices extends StatefulWidget {
  @override
  _LinkedDevicesState createState() => _LinkedDevicesState();
}

class _LinkedDevicesState extends State<LinkedDevices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: reusableAppBar(context, ' Linked Devices'),
      body: Center(
        child: Text(
          'No devices linked',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: blue,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
