import 'package:facebookclone/assets.dart';
import 'package:facebookclone/restoring/sugectioncard.dart';
import 'package:flutter/material.dart';

class SugectionSection extends StatelessWidget {
  const SugectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Column(
        children: [
          ListTile(
            title: Text('People you may know'),
            trailing: IconButton(
              onPressed: () {
                print('More Clicked');
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[500],
              ),
            ),
          ),
          Container(
            height: 540,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SugectionCard(
                  addFriend: () {
                    print('Add friend');
                  },
                  avatar: q1,
                  mutualFriend: '1 Mutual Friend',
                  name: 'Ruby',
                  removeFriend: () {
                    print('Remove friend');
                  },
                ),
                SugectionCard(
                  addFriend: () {
                    print('Add friend');
                  },
                  avatar: nymer,
                  mutualFriend: '10 Mutual Friend',
                  name: 'nymer jr',
                  removeFriend: () {
                    print('Remove friend');
                  },
                ),
                SugectionCard(
                  addFriend: () {
                    print('Add friend');
                  },
                  avatar: messi,
                  mutualFriend: '20 Mutual Friend',
                  name: 'messi',
                  removeFriend: () {
                    print('Remove friend');
                  },
                ),
                SugectionCard(
                  addFriend: () {
                    print('Add friend');
                  },
                  avatar: cr7,
                  mutualFriend: '15 Mutual Friend',
                  name: 'CR 7',
                  removeFriend: () {
                    print('Remove friend');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
