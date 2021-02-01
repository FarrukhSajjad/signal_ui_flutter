import 'package:flutter/material.dart';
import 'package:signal_ui/widgets/app_bar.dart';

class Advanced extends StatefulWidget {
  @override
  _AdvancedState createState() => _AdvancedState();
}

class _AdvancedState extends State<Advanced> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context, 'Advanced'),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text('Signal messages and calls'),
                    subtitle: Text('youtube@indieclan'),
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    title: Text('Advanced PIN settings'),
                  ),
                  ListTile(
                    title: Text('Submit debug log'),
                    subtitle: Text('Signal 5.0.8'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 15,
                left: 15,
                bottom: 15,
              ),
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Delete account',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
