// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tech_block/colors/colors_ui.dart';
import 'package:tech_block/gen/assets.gen.dart';

class Home extends StatelessWidget {
  String textBanner = 'دوازده قدم دوره برنامه نویسی فلاتر به همراه هوش مصنوعی ';
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;
    // double hw = size.height / size.width;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.amber,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              spacing: 10,
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
                    Image(
                      image: Assets.images.logo.provider(),
                      height: size.height / 13.63,
                      width: size.width / 3.73,
                    ),
                    IconButton(
                        icon: const Icon(Icons.search), onPressed: () {}),
                  ],
                ),
                Stack(
                  // alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      alignment: Alignment.bottomCenter,
                      height: size.height / 4.2,
                      width: size.width / 1.19,
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: Image(
                            image: Assets.images.bannerTest.provider(),
                          ).image,
                        ),
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: const LinearGradient(
                            colors: GradientColors.homePosterCoverGradiant,
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      right: 20,
                      bottom: 8,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 3,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'رضا عطایی - یک روز پیش',
                                style: textTheme.labelSmall,
                              ),
                              Text(
                                'Like 253',
                                style: textTheme.labelMedium,
                              ),
                            ],
                          ),
                          Text(
                            '${textBanner.substring(0, 48)} ...',
                            style: textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Home1 extends StatelessWidget {
  String inputId;
  Home1({required this.inputId});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(inputId),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
