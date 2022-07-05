import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constans.dart';
import '../widgets/GoogleSignIn.dart';
import '../widgets/MyFormField.dart';
import '../widgets/PublicButton.dart';
import '../widgets/my_assest_image.dart';
import '../widgets/phoneForm.dart';
import 'login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

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
        automaticallyImplyLeading: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child:
                Stack(alignment: AlignmentDirectional.bottomStart, children: [
              const MyAssetImage(
                image: 'color',
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5),
                child: SizedBox(
                  height: 40,
                  width: 50,
                  child: FloatingActionButton(
                      backgroundColor: Colors.black,
                      onPressed: () {},
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_outlined),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                ),
              ),
            ]),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    child: Column(
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
                                'Register',
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
                              ),
                            ]),
                        const SizedBox(
                          height: 10,
                        ),
                        const MyFormField(
                          label: 'Email',
                          type: TextInputType.text,
                          hint: 'Eg. example@email.com',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const PhoneForm(),
                        const SizedBox(
                          height: 10,
                        ),
                        MyFormField(
                          label: 'Password',
                          type: TextInputType.visiblePassword,
                          hint: 'Password',
                          isPassword: isHidePass,
                          suffixIcon: isHidePass
                              ? Icons.visibility_off
                              : Icons.visibility,
                          suffixIconPressed: () {
                            setState(() {
                              isHidePass = !isHidePass;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        PublicButton(
                          function: () {},
                          text: 'Register',
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
