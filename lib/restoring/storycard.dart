import 'package:facebookclone/restoring/avatar.dart';
import 'package:facebookclone/restoring/circularbutton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String textLabel;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displyBorder;

  const StoryCard({
    super.key,
    required this.textLabel,
    required this.story,
    required this.avatar,
    this.createStoryStatus = false,
    this.displyBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(
        right: 5,
        left: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? CircularButton(
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                    buttonAction: () {
                      print('adding button');
                    },
                  )
                : Avatar(
                    displyImage: avatar,
                    displyStatus: false,
                    displyBorder: displyBorder,
                    width: 35,
                    height: 35,
                  ),
          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                textLabel != null ? textLabel : "N/A",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              )),
        ],
      ),
    );
  }
}
