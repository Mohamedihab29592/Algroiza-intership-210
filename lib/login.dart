import 'package:algroriza_intership_210/register.dart';
import 'package:flutter/material.dart';
import 'components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(

                        image: AssetImage(
                            "asset/images/color.jpg"),
                    fit: BoxFit.cover)

                ),
              ),
              const SizedBox(height: 10,),

               Row(
                 children:const [
                   Text('Welcome To Fashion Daily',style: TextStyle(color: Colors.grey),),
                 ],
               ),
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
                    height:10,
                  ),
                  PublicButton(
                    function: () {},
                    text: 'Sign in',
                    backgroundColor: Colors.blue,
                  ),
                  const SizedBox(
                    height: 10,
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
                    height: 10,
                  ),
                  const GoogleSignIn(),
                  const SizedBox(
                    height: 10,
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
                        height: 10,
                      ),
                      const Text(textAlign:TextAlign.center,
                        "Use the application according to policy rules. Any\n kinds of violations will be subject to sanctions. ",
                        style: TextStyle(color: Colors.grey),
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
