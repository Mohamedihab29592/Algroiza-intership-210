import 'package:flutter/material.dart';

import 'circular-Icon.dart';


class TextButtonIcon extends StatelessWidget {
  final String text;
  final IconData? iconData;

  const TextButtonIcon({Key? key, required this.text, this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Text( text,  ),
          const SizedBox(
            width: 5,
          ),
          CircularIcon(
            icon: iconData,
          ),
        ],
      ),
    );
  }
}