import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  final String label;
  final double radius;
  final String hint;
  final bool isPassword;
  final TextInputType type;
  final VoidCallback? suffixIconPressed;
  final IconData? suffixIcon;

  const MyFormField(
      {Key? key,
      required this.label,
      this.radius = 15,
      required this.type,
      this.isPassword = false,
      required this.hint,
      this.suffixIcon,
      this.suffixIconPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: Colors.grey),
        ),
        TextFormField(
          obscureText: isPassword,
          keyboardType: type,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                suffixIcon,
                color: Colors.black,
              ),
              onPressed: suffixIconPressed,
            ),
          ),
          validator: (String? val) {
            if (val!.isEmpty) {
              return "Can't be empty";
            }
            return null;
          },
        ),
      ],
    );
  }
}
