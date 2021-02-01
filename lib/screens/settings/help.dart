import 'package:flutter/material.dart';
import 'package:signal_ui/widgets/app_bar.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context, 'Help'),
    );
  }
}
