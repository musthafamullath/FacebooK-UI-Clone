import 'package:facebookclone/assets.dart';
import 'package:facebookclone/bluetick.dart';
import 'package:facebookclone/restoring/avatar.dart';
import 'package:facebookclone/restoring/headerbutton.dart';
import 'package:facebookclone/restoring/headerbuttonf.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String profileName;
  final String publishedAt;
  final String postImage;
  final String postTitle;
  final bool showBlueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  const PostCard({
    super.key,
    required this.avatar,
    required this.profileName,
    required this.publishedAt,
    required this.postImage,
    required this.postTitle,
    this.showBlueTick = false,
    required this.commentCount,
    required this.likeCount,
    required this.shareCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            color: Colors.grey[500],
            thickness: 1,
          ),
          HeaderButton(
            buttonOne: headerbutton(
              textButton: "Like",
              iconButton: Icons.thumb_up_alt_outlined,
              colorButton: Colors.grey,
              actionbutton: () {
                print('Go to Like');
              },
            ),
            buttonTwo: headerbutton(
              textButton: "Comment",
              iconButton: Icons.message_outlined,
              colorButton: Colors.grey,
              actionbutton: () {
                print('Go to Comment');
              },
            ),
            buttonThree: headerbutton(
              textButton: "Share",
              iconButton: Icons.share_outlined,
              colorButton: Colors.grey,
              actionbutton: () {
                print('Go to Share');
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                displyText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displyText(label: commentCount),
                SizedBox(width: 5),
                displyText(label: "Comments"),
                SizedBox(width: 10),
                displyText(label: shareCount),
                SizedBox(width: 5),
                displyText(label: 'Shares'),
                SizedBox(width: 10),
                Avatar(
                  displyImage: messi,
                  displyStatus: false,
                  width: 20,
                  height: 20,
                ),
                IconButton(
                  onPressed: () {
                    print('drop dwon');
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displyText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(
        color: Colors.grey,
      ),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ''?
     Container(
      padding: EdgeInsets.all(10),
      child: Text(
        postTitle == null ? "" : postTitle,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    ) : SizedBox();
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displyImage: avatar,
        displyStatus: false,
      ),
      title: Row(
        children: [
          Text(
            profileName,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? Bluetick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            size: 15,
            color: Colors.grey[500],
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print('menu button in postcard');
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[500],
        ),
      ),
    );
  }
}
