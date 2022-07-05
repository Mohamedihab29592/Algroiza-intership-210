import 'package:algroriza_intership_210/features/presentation/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constans.dart';
import '../widgets/PublicButton.dart';
import '../widgets/skipButton.dart';
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
          'we have young and professional delivery\n team that will bring your food as soon as\n possible to your door step.',
    ),
    BoardingModel(
      image: 'asset/images/board2.png',
      title: 'Buy any food from your favorite restaurant',
      body:
          'we are constantly adding your favourite\n restaurant throughout the territory and around\n your area carefully selected.',
    ),
  ];
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SkipButton(
            function: () {
              navigateTo(context, const LoginScreen());
            },
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
            flex: 8,
            child: Image(
              image: AssetImage(model.image),
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              textAlign: TextAlign.center,
              model.title,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              maxLines: 3,
              textAlign: TextAlign.center,
              model.body,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
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
          const SizedBox(
            height: 20,
          ),
          PublicButton(
            function: () {
              navigateTo(context, const LoginScreen());
            },
            text: 'Get Started',
            backgroundColor: Colors.teal,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              TextButton(
                  onPressed: () {
                    navigateTo(context, const RegisterPage());
                  },
                  child: const Text('Sign up'))
            ],
          ),
        ],
      );
}
