
import 'package:flutter/material.dart';

class SugectionCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriend;
  final void Function() addFriend;
  final void Function() removeFriend;
  const SugectionCard(
      {super.key,
      required this.addFriend,
      required this.avatar,
      required this.mutualFriend,
      required this.name,
      required this.removeFriend});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: EdgeInsets.only(right: 10, left: 10),
      child: Stack(
        children: [
          sugectionImage(),
          sugectionDetails(),
        ],
      ),
    );
  }

  Widget sugectionDetails() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(10),
          ),
        ),
        width: 200,
        height: 200,
        child: Column(
          children: [
            ListTile(
              title: Text(name == null ? name : ""),
              subtitle: Text(mutualFriend == null ? mutualFriend : ""),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                    buttonAction: removeFriend,
                    buttonIcon: Icons.verified_user,
                    buttonColor: Colors.blue,
                    buttonTextColor: Colors.white,
                    buttonIconColor: Colors.white,
                    buttonText: 'Add Friend',
                  ),
                  flatbutton(
                    buttonAction: addFriend,
                    buttonColor: Colors.grey,
                    buttonTextColor: Colors.black,
                    buttonText: 'Add Friend',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget flatbutton({
    required void Function() buttonAction,
    required Color buttonColor,
    required Color buttonTextColor,
    required String buttonText,
  }) {
    return Container(
      color: buttonColor,
      child: TextButton(
        onPressed: buttonAction,
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
          ),
        ),
      ),
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return Container(
      color: buttonColor,
      child: TextButton.icon(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: buttonIconColor,
        ),
        label: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
          ),
        ),
      ),
    );
  }

  Widget sugectionImage() {
    return Positioned(
      top: 0,
      left: 0,
      bottom: 0,
      child: ClipRRect(
        clipBehavior: Clip.none,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: avatar != null
            ? Image.asset(
                avatar,
                height: 300,
                fit: BoxFit.scaleDown,
              )
            : SizedBox(),
      ),
    );
  }
}
