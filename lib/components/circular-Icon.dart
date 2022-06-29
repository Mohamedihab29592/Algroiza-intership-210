import 'package:flutter/material.dart';


class CircularIcon extends StatelessWidget {
  final IconData? icon;
  const CircularIcon({
    Key? key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 10,
      child: Icon(
        icon ?? Icons.question_mark_sharp,
        size: 10,
        color: Colors.white,
      ),
    );
  }
}