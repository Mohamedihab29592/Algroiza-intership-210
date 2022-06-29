import 'package:algroriza_intership_210/register.dart';
import 'package:flutter/material.dart';

import 'components/TextIcon.dart';
import 'components/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
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

              const Text('Welcome To Fashion Daily',style: TextStyle(color: Colors.grey),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Sign In',
                          style: TextStyle(fontSize: 40),
                        ),
                        TextButtonIcon(text: 'Help'),
                      ]),
                  const PhoneForm(),
                  const SizedBox(
                    height:20,
                  ),
                  PublicButton(
                    function: () {},
                    text: 'Sign in',
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
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          const Text( "Doesn't has any account?"),
                          TextButton(
                            onPressed: () {
                              navigateTo(context, const RegisterPage());
                            },
                            child: const Text(
                              'Register here',
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(textAlign:TextAlign.center,
                        "Use the application according to policy rules. Any kinds of violations will be subject to sanctions ",
                        style: TextStyle(color: Colors.grey),
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
