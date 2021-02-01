import 'package:flutter/material.dart';
import 'package:signal_ui/widgets/app_bar.dart';

class Appearance extends StatefulWidget {
  @override
  _AppearanceState createState() => _AppearanceState();
}

class _AppearanceState extends State<Appearance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: reusableAppBar(context, 'Appearance'),
      body: Column(
        children: [
          ListTile(
            title: Text(
              'Theme',
              style: TextStyle(fontSize: 18),
            ),
            trailing: Text(
              'Light',
              style: TextStyle(
                fontSize: 18,
                color: Colors.blueAccent,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Language',
              style: TextStyle(fontSize: 18),
            ),
            trailing: Text(
              'System default',
              style: TextStyle(
                fontSize: 18,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
