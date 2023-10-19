import 'package:facebookclone/assets.dart';
import 'package:facebookclone/restoring/storycard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            textLabel: "Add to story",
            story: cr7,
            avatar: cr7,
            createStoryStatus: true,
            displyBorder: true,
          ),
          StoryCard(
            textLabel: "Lonal messi",
            story: nymer,
            avatar: messi,
            createStoryStatus: false,
            displyBorder: true,
          ),
          StoryCard(
            textLabel: "CR 7",
            story: messi,
            avatar: cr7,
            createStoryStatus: false,
            displyBorder: true,
          ),
          StoryCard(
            textLabel: "JR nymer",
            story: cr7,
            avatar: nymer,
            createStoryStatus: false,
            displyBorder: true,
          ),
          StoryCard(
            textLabel: "Lonal messi",
            story: nymer,
            avatar: messi,
            createStoryStatus: false,
            displyBorder: true,
          ),
          StoryCard(
            textLabel: "CR 7",
            story: messi,
            avatar: cr7,
            createStoryStatus: false,
            displyBorder: true,
          ),
          StoryCard(
            textLabel: "JR nymer",
            story: q1,
            avatar: nymer,
            createStoryStatus: false,
            displyBorder: true,
          ),
        ],
      ),
    );
  }
}
