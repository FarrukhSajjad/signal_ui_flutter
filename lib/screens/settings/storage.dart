import 'package:flutter/material.dart';
import 'package:signal_ui/widgets/app_bar.dart';

class Storage extends StatefulWidget {
  @override
  _StorageState createState() => _StorageState();
}

class _StorageState extends State<Storage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context, 'Storage'),
    );
  }
}
