import 'package:flutter/material.dart';
import 'package:signal_ui/constants.dart';
import 'package:signal_ui/screens/new_message.dart';
import 'package:signal_ui/screens/settings.dart';
import 'package:signal_ui/widgets/chat.dart';
import 'package:image_picker/image_picker.dart';

import 'chat_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final picker = ImagePicker();

  List<String> names = [
    'Farrukh Sajjad',
    'Fawad Ali',
    'Obaid',
    'Irfan',
    'Haseeb',
    'Abdullah',
    'Usman',
    'Tariq',
    'Adil',
    'Usama',
    'Abdur',
    'Zain',
    'Saqlain'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0.0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            ),
          ],
          title: ListTile(
            leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => Settings()));
              },
              child: CircleAvatar(
                radius: 20,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/avatar.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            title: Text(
              'Signal',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
              ),
            ),
          )),
      body: SafeArea(
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            return Chat(
              personName: names[index],
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => ChatScreen(
                              personName: names[index],
                              //colour: color,
                            )));
              },
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () async {
              await picker.getImage(source: ImageSource.camera);
            },
            heroTag: null,
            child: Icon(
              Icons.camera_alt_rounded,
              color: grey,
              size: 25,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            backgroundColor: blue,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => NewMessage()));
            },
            heroTag: null,
            child: Icon(
              Icons.edit,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
