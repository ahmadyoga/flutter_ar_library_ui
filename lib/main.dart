import 'package:flutter/material.dart';
import 'package:flutter_library_app/ui/pages/dashboard.dart';
import 'package:flutter_library_app/ui/pages/detailpage.dart';
import 'package:flutter_library_app/ui/pages/homepage.dart';
import 'package:flutter_library_app/ui/pages/onboardingpage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        getPages: [
          GetPage(name: '/', page: (() => const OnBoardingPage())),
          GetPage(name: '/home', page: (() => const HomePage())),
          GetPage(name: '/dashboard', page: (() => const Dashboard())),
          GetPage(name: '/detail', page: (() => const DetailPage())),
        ]);
  }
}
