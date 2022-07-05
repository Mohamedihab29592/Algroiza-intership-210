import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  final VoidCallback function;

  const SkipButton({Key? key, required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(

        width: 60,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),

        child: MaterialButton(
          onPressed: function,
          color: Colors.grey.shade100,

          child: const Text( 'Skip',style: TextStyle(color: Colors.black),),
        ),
      ),
    );
  }
}
