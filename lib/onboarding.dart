import 'package:algroriza_intership_210/register.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'components.dart';
import 'login.dart';

class BoardingModel {
  late final String image;
  late final String title;
  late final String body;

  BoardingModel({
    required this.title,
    required this.image,
    required this.body,
  });
}

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'asset/images/board1.png',
      title: 'Get food delivery to your doorstep asap',
      body:
          'we have young and professional delivery team that will bring your food as soon as possible to your door step',
    ),
    BoardingModel(
      image: 'asset/images/board2.png',
      title: 'Buy any food from your favorite restaurant',
      body:
          'we are constantly adding your favourite restaurant throughout the territory and around your area carefully selected ',
    ),
  ];
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {
                navigateTo(context, const LoginScreen());

              },
              icon: const Text(
                'skip',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(

          children: [
            SizedBox(
              height: 50,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage('asset/images/7.png'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: boardController,
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),


          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image(
              image: AssetImage(model.image),
            ),
          ),
          Text(
            textAlign:TextAlign.center,
            model.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            textAlign:TextAlign.center,
            model.body,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmoothPageIndicator(
                controller: boardController,
                effect: const ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  activeDotColor: Colors.amberAccent,
                  dotHeight: 10,
                  expansionFactor: 4,
                  dotWidth: 10,
                  spacing: 5,
                ),
                count: boarding.length,
              ),
            ],
          ),
           const SizedBox(height: 30,),

          PublicButton(function: () { navigateTo(context, const LoginScreen()); }, text: 'Get Started',),
          const SizedBox(height: 30,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const Text("Don't have an account?"),
               TextButton(onPressed: (){ navigateTo(context, const RegisterPage());}, child: const Text('Sign up'))
             ],
           ),
        ],
      );
}
