import 'package:facebookclone/assets.dart';
import 'package:facebookclone/restoring/circularbutton.dart';
import 'package:facebookclone/restoring/headerbutton.dart';
import 'package:facebookclone/restoring/headerbuttonf.dart';
import 'package:facebookclone/restoring/postcard.dart';
import 'package:facebookclone/restoring/storysection.dart';
import 'package:facebookclone/restoring/stutusbar.dart';
import 'package:facebookclone/restoring/sugectionSection.dart';
import 'package:facebookclone/roomsection.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final line1 = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );
  final line2 = Divider(
    thickness: 5,
    color: Colors.grey[300],
  );
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: const Text(
                'facebook',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                CircularButton(
                    buttonIcon: Icons.search,
                    buttonAction: () {
                      print('search button');
                    }),
                CircularButton(
                    buttonIcon: Icons.message,
                    buttonAction: () {
                      print('message button');
                    }),
              ],
            ),
            body: ListView(
              children: [
                const StatusBar(),
                line1,
                HeaderButton(
                  buttonOne: headerbutton(
                    textButton: "Live",
                    iconButton: Icons.video_call,
                    colorButton: Colors.red,
                    actionbutton: () {
                      print('Go Live');
                    },
                  ),
                  buttonTwo: headerbutton(
                    textButton: "Photo",
                    iconButton: Icons.photo_library,
                    colorButton: Colors.green,
                    actionbutton: () {
                      print('Take photo');
                    },
                  ),
                  buttonThree: headerbutton(
                    textButton: "Room",
                    iconButton: Icons.video_call,
                    colorButton: Colors.purple,
                    actionbutton: () {
                      print('Create room');
                    },
                  ),
                ),
                line2,
                const RoomSection(),
                line2,
                const StorySection(),
                line2,
                PostCard(
                  avatar: messi,
                  profileName: 'Leonal messi',
                  publishedAt: "5h",
                  postImage: nymer,
                  postTitle: 'Happy Birth Day !!',
                  showBlueTick: true,
                  commentCount: '1k',
                  likeCount: '10k',
                  shareCount: '1k',
                ),
                line2,
                SugectionSection(),
                line2,
                PostCard(
                  avatar: cr7,
                  profileName: 'CR 7',
                  publishedAt: "1 day ago",
                  postImage: messi,
                  postTitle: postTitle,
                  showBlueTick: true,
                  commentCount: '2k',
                  likeCount: '11k',
                  shareCount: '.5k',
                ),
                line2,
                PostCard(
                  avatar: nymer,
                  profileName: 'Nymer JR',
                  publishedAt: "10h",
                  postImage: cr7,
                  postTitle: '',
                  showBlueTick: true,
                  commentCount: '15k',
                  likeCount: '15k',
                  shareCount: '15k',
                ),
                line2,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
