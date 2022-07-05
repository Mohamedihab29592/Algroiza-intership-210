import 'package:algroriza_intership_210/features/presentation/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constans.dart';
import '../widgets/GoogleSignIn.dart';
import '../widgets/PublicButton.dart';
import '../widgets/my_assest_image.dart';
import '../widgets/phoneForm.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: MyAssetImage(
              image: 'color',
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Welcome To Fashion Daily',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Sign In',
                                style: TextStyle(fontSize: 40),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: const [
                                    Text(
                                      'Help',
                                    ),
                                    Icon(
                                      Icons.help,
                                    ),
                                  ],
                                ),
                              )
                            ]),
                        const PhoneForm(),
                        const SizedBox(
                          height: 10,
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
                                const Text("Doesn't has any account?"),
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
                            const Text(
                              textAlign: TextAlign.center,
                              "Use the application according to policy rules. Any\n kinds of violations will be subject to sanctions. ",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
