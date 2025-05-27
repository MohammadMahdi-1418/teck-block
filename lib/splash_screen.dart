import 'package:flutter/material.dart';
import 'package:tech_block/style/colors/colors_ui.dart';
import 'package:tech_block/gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tech_block/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 0)).then((value) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return Home();
        },
      ));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: SolidColors.lightBackColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: Assets.images.logo.provider()),
            const SpinKitThreeBounce(
              color: SolidColors.primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
