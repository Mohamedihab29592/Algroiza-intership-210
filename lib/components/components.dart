import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

class PhoneForm extends StatelessWidget {
  const PhoneForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Phone Number',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        PhoneFormField(
          showFlagInInput: true,
          defaultCountry: IsoCode.EG,
          shouldFormat: true,
          decoration: const InputDecoration(
            hintText: 'Ex. 010 18 36 46 33',
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}

class PublicButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final String text;

  const PublicButton({
    Key? key,
    this.backgroundColor = Colors.blue,
    required this.function,
    this.width = double.infinity,
    required this.text,
    this.borderRadius = 5,
    this.height = 52,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        height: height,
        color: backgroundColor,
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}

class GoogleSignIn extends StatelessWidget {
  const GoogleSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: double.infinity,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            side: const BorderSide(color: Colors.blue),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/images/google.png',
                width: 20,
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Sign with by Google',
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
        ));
  }
}

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
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            label,
            style: const TextStyle(color: Colors.grey),
          ),
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
