import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum_market_demo/components/constans/images.dart';
import 'package:uzum_market_demo/pages/home/tab/tabs/main_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (_) => MainPage()), (route) => false),
    );
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppImages.logo,
          width: 180,
        ),
      ),
    );
  }
}
