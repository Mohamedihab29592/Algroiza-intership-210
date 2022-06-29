import 'package:algroriza_intership_210/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/TextIcon.dart';
import 'components/components.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isHidePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton( backgroundColor: Colors.black,
              onPressed: () { Navigator.pop(context); },
              child: IconButton(icon:  const Icon(Icons.arrow_back_ios_outlined), onPressed: () { Navigator.pop(context); },)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(

                        image: AssetImage(
                            "asset/images/color.jpg"),
                        fit: BoxFit.cover)

                ),
              ),
              const SizedBox(height: 20,),
              const Text(
                'Welcome To Fashion Daily',
                style: TextStyle(color: Colors.grey),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Register',
                          style: TextStyle(fontSize: 40),
                        ),
                        TextButtonIcon(text: 'Help'),
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  const MyFormField(
                    label: 'Email',
                    type: TextInputType.text,
                    hint: 'Eg. example@email.com',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const PhoneForm(),
                  const SizedBox(
                    height: 20,
                  ),
                  MyFormField(
                    label: 'Password',
                    type: TextInputType.visiblePassword,
                    hint: 'Password',
                    isPassword: isHidePass,
                    suffixIcon:
                        isHidePass ? Icons.visibility_off : Icons.visibility,
                    suffixIconPressed: () {
                      setState(() {
                        isHidePass = !isHidePass;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PublicButton(
                    function: () {},
                    text: 'Register',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Or',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const GoogleSignIn(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Has any account?"),
                      TextButton(
                        onPressed: () {
                          navigateTo(context, const LoginScreen());
                        },
                        child: const Text(
                          'Sign in here',
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      const Text(
                        textAlign: TextAlign.center,
                        "By registering you account, you are agree to our",
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'terms and condition',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
