import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:get/get.dart';
import 'package:signal_ui/screens/settings/advanced.dart';
import 'package:signal_ui/screens/settings/appearance.dart';
import 'package:signal_ui/screens/settings/chats_n_media.dart';
import 'package:signal_ui/screens/settings/help.dart';
import 'package:signal_ui/screens/settings/linked_devices.dart';
import 'package:signal_ui/screens/settings/notifications.dart';
import 'package:signal_ui/screens/settings/privacy.dart';
import 'package:signal_ui/screens/settings/sms_and_mms.dart';
import 'package:signal_ui/screens/settings/storage.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18.0,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: title.length + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return ListTile(
                leading: ClipOval(
                  child: CircleAvatar(
                    radius: 40,
                    child: Image.asset(
                      'assets/images/avatar.png',
                      fit: BoxFit.contain,
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                title: Text(
                  'Farrukh Sajjad',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('youtube@indieclan'),
              );
            }
            return SettingsItem(
                title: title[index - 1],
                icon: icons[index - 1],
                subtitle: subtitles[index - 1],
                trailing: title[index - 1].contains('Donate')
                    ? Icon(Icons.ios_share)
                    : Icon(null),
                onTap: () {
                  if (title[index - 1].contains('SMS')) {
                    Get.to(SMS());
                  } else if (title[index - 1].contains('Notifications')) {
                    Get.to(Notifications());
                  } else if (title[index - 1].contains('Privacy')) {
                    Get.to(Privacy());
                  } else if (title[index - 1].contains('Appearance')) {
                    Get.to(Appearance());
                  } else if (title[index - 1].contains('Chats and media')) {
                    Get.to(ChatsNMedia());
                  } else if (title[index - 1].contains('Storage')) {
                    Get.to(Storage());
                  } else if (title[index - 1].contains('Linked devices')) {
                    Get.to(LinkedDevices());
                  } else if (title[index - 1].contains('Help')) {
                    Get.to(Help());
                  } else if (title[index - 1].contains('Advanced')) {
                    Get.to(Advanced());
                  }
                });
          },
        ),
      ),
    );
  }
}

List<String> title = [
  'SMS and MMS',
  'Notifications',
  'Privacy',
  'Appearance',
  'Chats and media',
  'Storage',
  'Linked devices',
  'Help',
  'Advanced',
  'Donate to Signal',
];

List icons = [
  Icons.chat_bubble_outline_rounded,
  Icons.notifications_outlined,
  Icons.lock_outline,
  Icons.lightbulb_outline,
  Icons.photo,
  Icons.storage_outlined,
  Icons.cast_connected,
  Icons.help_outline_outlined,
  Icons.code,
  EvaIcons.heart,
];

List subtitles = [
  'Off',
  'On',
  'Screen lock Off, Registration lock off',
  'Theme Light, Language',
  '',
  '',
  '',
  '',
  '',
  '',
];

class SettingsItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Icon trailing;
  final Function onTap;

  SettingsItem({
    @required this.title,
    @required this.icon,
    this.subtitle,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon),
      title: Text('$title'),
      subtitle: Text('$subtitle'),
      trailing: trailing,
    );
  }
}
