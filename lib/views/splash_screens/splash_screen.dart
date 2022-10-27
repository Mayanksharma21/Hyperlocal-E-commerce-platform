import 'package:eshop/widgets_common/appLogo.dart';
import 'package:flutter/material.dart';
import 'package:eshop/content/consts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg, width: 300),
            ),     
            20.heightBox,
            appLogoImage(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
          ],
        ),
      ),
    );
  }
}