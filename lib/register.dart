import 'package:algroriza_intership_210/login.dart';
import 'package:flutter/material.dart';
import 'components.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomStart,
                children:[
                  Container(
                  height: 100,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "asset/images/color.jpg"),
                        fit: BoxFit.cover,

                      )
                  ),

                ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 5),
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

                ]
              ),


              const SizedBox(
                height: 10,
              ),
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
                  children: const [
                    Text(
                      'Register',
                      style: TextStyle(fontSize: 40),
                    ),
                    TextButtonIcon(text: 'Help'),
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
                suffixIcon:
                    isHidePass ? Icons.visibility_off : Icons.visibility,
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
                text: 'Register', backgroundColor: Colors.blue,
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
    );
  }
}
