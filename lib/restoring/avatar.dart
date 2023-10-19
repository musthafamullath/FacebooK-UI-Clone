import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displyImage;
  final bool displyStatus;
  final bool displyBorder;
  final double width;
  final double height;

  Avatar({
    required this.displyImage,
    required this.displyStatus,
    this.displyBorder = false,
    this.height = 50,
    this.width =50,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: displyBorder
              ? Border.all(
                  width: 2.5,
                  color: Colors.blueAccent,
                )
              : const Border(),
        ),
        padding: const EdgeInsets.only(right: 4, left: 4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            displyImage,
            width: width,
            height: height,
            fit: BoxFit.fill,
          ),
        ),
      ),
      displyStatus == true
          ? Positioned(
              right: 1.0,
              bottom: 0,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    )),
              ),
            )
          : const SizedBox(),
    ]);
  }
}
