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
        const Text(
          'Phone Number',
          style: TextStyle(color: Colors.grey),
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
    required this.backgroundColor,
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
