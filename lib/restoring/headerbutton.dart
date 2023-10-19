import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeaderButton extends StatelessWidget {
  Widget line = VerticalDivider(thickness: 1, color: Colors.grey[300]);

  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;
 

  HeaderButton({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,
    
  });



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buttonOne,
          line,
          buttonTwo,
          line,
          buttonThree,
        ],
      ),
    );
  }
}
