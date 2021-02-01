import 'package:flutter/material.dart';
import 'package:signal_ui/widgets/app_bar.dart';

class ChatsNMedia extends StatefulWidget {
  @override
  _ChatsNMediaState createState() => _ChatsNMediaState();
}

class _ChatsNMediaState extends State<ChatsNMedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context, 'Chats and media'),
    );
  }
}
