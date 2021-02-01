import 'package:flutter/material.dart';
import 'package:signal_ui/widgets/app_bar.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context, 'Privacy'),
    );
  }
}
