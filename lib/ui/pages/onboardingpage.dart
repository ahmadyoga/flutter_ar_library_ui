import 'package:flutter/material.dart';
import 'package:flutter_library_app/utils/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SizedBox(
          height: 121,
          child: Stack(
            children: [
              SvgPicture.asset('assets/svg/background.svg',
                  width: Get.width, fit: BoxFit.cover),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SvgPicture.asset(
                    'assets/svg/Logo.svg',
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SvgPicture.asset(
            'assets/svg/Onboarding-image.svg',
            fit: BoxFit.fill,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 47),
          child: Text(
            'With peruse, find the perfect book for your next read. Browse the best sellers in the library before you purchase. Once purchased, visit the AR library museum and discover hidden gems!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kDarkLiver,
              height: 1.5,
              fontFamily: 'Brandon text regular',
              fontSize: 20,
            ),
          ),
        ),
        UnconstrainedBox(
          child: InkWell(
            onTap: () => Get.toNamed('/dashboard'),
            child: Container(
              margin: const EdgeInsets.all(18),
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
              decoration: BoxDecoration(
                  color: kgreen,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: kEerieBlack,
                    width: 1,
                  )),
              child: const Text(
                'Ok, let`s go!',
                style: TextStyle(
                  fontFamily: 'Brandon text bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
