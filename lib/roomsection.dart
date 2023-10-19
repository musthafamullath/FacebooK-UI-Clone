import 'package:facebookclone/assets.dart';
import 'package:facebookclone/restoring/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          creatRoomButton(),
          Avatar(displyImage: cr7,displyStatus: true),
          Avatar(displyImage: messi,displyStatus: true),
          Avatar(displyImage: nymer,displyStatus: true),
          Avatar(displyImage: cr7,displyStatus: true),
          Avatar(displyImage: messi,displyStatus: true),
          Avatar(displyImage: nymer,displyStatus: true),
          Avatar(displyImage: cr7,displyStatus: true),
          Avatar(displyImage: messi,displyStatus: true),
          Avatar(displyImage: nymer,displyStatus: true),
          Avatar(displyImage: cr7,displyStatus: true),
          Avatar(displyImage: messi,displyStatus: true),
          Avatar(displyImage: nymer,displyStatus: true),
        ],
      ),
    );
  }

  Widget creatRoomButton() {
    return Container(
      padding: const EdgeInsets.only(right: 5,left: 5),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.blue),
          shape: StadiumBorder(),
        ),
        onPressed: () {
          print('outlinedbutton clicked');
        },
        icon: const Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: const Text(
          "Create \n Room",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
