// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tech_block/style/colors/colors_ui.dart';
import 'package:tech_block/gen/assets.gen.dart';
import 'package:tech_block/model/fake_poster.dart';
import 'package:tech_block/style/strings/string_ui.dart';

class Home extends StatelessWidget {
  String textBanner =
      'دوازده قدم دوره برنامه نویسی فلاتر به همراه هوش مصنوعی س ...';
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;
    double marginSize = size.width / 16;
    // double hw = size.height / size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            SizedBox(width: marginSize - 10),
            IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
            const Spacer(),
            Image(
              image: Assets.images.logo.provider(),
              height: size.height / 13.63,
              width: size.width / 3.73,
            ),
            const Spacer(),
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            SizedBox(width: marginSize - 10),

            // Padding(
            //   padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [

            //     ],
            //   ),
            // ),
          ],
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Text((size.height / size.width).toString()),
                    Center(
                      child: Stack(
                        // alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                marginSize, 0, marginSize, 0),
                            // padding: const EdgeInsets.all(16),
                            alignment: Alignment.bottomCenter,
                            height: size.height / 4.2,
                            // width: size.width / 1.19,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image(
                                  image: homePagePosterMap['imageAssets']
                                      .provider(),
                                ).image,
                              ),
                            ),
                            foregroundDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: const LinearGradient(
                                colors: GradientColors.homePosterCoverGradiant,
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 30,
                            right: 30,
                            bottom: 12,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // spacing: 5,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '${homePagePosterMap['writer']} - ${homePagePosterMap['date']}',
                                        style: textTheme.labelMedium,
                                      ),
                                      const Spacer(),
                                      Text(
                                        homePagePosterMap['view'].toString(),
                                        style: textTheme.labelMedium,
                                      ),
                                      const SizedBox(width: 5),
                                      const Icon(
                                        Icons.remove_red_eye,
                                        color: SolidColors.posterTitle,
                                        size: 17,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    homePagePosterMap['title'],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: textTheme.labelLarge,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: listHashTagModel.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.fromLTRB(
                              index == listHashTagModel.length - 1
                                  ? marginSize
                                  : 0,
                              10,
                              index == 0 ? marginSize : 8,
                              10,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  // height: size.height / 22.837,
                                  height: 40,
                                  padding:
                                      const EdgeInsets.fromLTRB(14, 2, 14, 2),
                                  // width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    gradient: const LinearGradient(
                                      colors: GradientColors.tags,
                                      begin: Alignment.centerRight,
                                      end: Alignment.centerLeft,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    spacing: 10,
                                    children: [
                                      // const Image(
                                      //   image:
                                      //       AssetImage('assets/icons/hashtag.png'),
                                      // ),
                                      ImageIcon(
                                        Assets.icons.hashtag.provider(),
                                        color: SolidColors.lightIcon,
                                        size: 15,
                                      ),
                                      // ImageIcon(Assets),
                                      // Text(
                                      //   '#',
                                      //   style: textTheme.labelMedium,
                                      // ),
                                      Text(
                                        listHashTagModel[index].title,
                                        style: textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    //listView 1
                    Row(
                      spacing: 10,
                      children: [
                        SizedBox(width: marginSize - 10),
                        ImageIcon(
                          Assets.icons.a2710222.provider(),
                          color: SolidColors.colorTitle,
                        ),
                        Text(StringUi.readMoreMaghale,
                            style: textTheme.titleLarge)
                      ],
                    ),
                    SizedBox(
                      // height: size.height / 4.37,
                      height: size.height / 3.8,
                      child: ListView.builder(
                        itemCount: blogList.getRange(0, 5).length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              right: index == 0 ? marginSize : 14,
                              left: index == blogList.getRange(0, 5).length - 1
                                  ? marginSize
                                  : 0,
                            ),
                            child: Column(
                              spacing: 2,
                              children: [
                                Stack(children: [
                                  Container(
                                    alignment: Alignment.bottomCenter,
                                    width: size.width / 2.4,
                                    height: size.height / 5.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      // color: Colors.amber,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          blogList[index].imageUrl,
                                        ),
                                      ),
                                    ),
                                    foregroundDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: const LinearGradient(
                                        colors: GradientColors.blogPost,
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 11,
                                    bottom: 11,
                                    left: 11,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      spacing: 3,
                                      children: [
                                        Text(
                                          blogList[index].writer,
                                          style: textTheme.labelMedium,
                                        ),
                                        const Spacer(),
                                        Text(
                                          blogList[index].views,
                                          style: textTheme.labelMedium,
                                        ),
                                        const Icon(
                                          Icons.remove_red_eye,
                                          color: SolidColors.lightIcon,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                                SizedBox(
                                  width: size.width / 2.4,
                                  child: Text(
                                    blogList[index].title,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: textTheme.labelSmall,
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    //listView 2
                    Row(
                      spacing: 10,
                      children: [
                        SizedBox(width: marginSize - 10),
                        ImageIcon(
                          Assets.icons.microphone.provider(),
                          color: SolidColors.colorTitle,
                        ),
                        Text(StringUi.readMorePadkast,
                            style: textTheme.titleLarge),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 3.8,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listPadkastPosterModel.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              right: index == 0 ? marginSize : 14,
                              left: index == listPadkastPosterModel.length - 1
                                  ? marginSize
                                  : 0,
                            ),
                            child: Column(
                              spacing: 3,
                              children: [
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  width: size.width / 2.4,
                                  height: size.height / 5.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    // color: Colors.amber,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/padckast_maghaleh/${listPadkastPosterModel[index].image}.png'),
                                    ),
                                  ),
                                ),
                                Text(
                                  listPadkastPosterModel[index].title,
                                  style: textTheme.headlineLarge,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: size.height / 20),
                  ],
                ),
              ),
            ),

            //bottmNav
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                height: size.height / 9.5,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: GradientColors.bottomNavBackground,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                alignment: Alignment.center,
                child: Container(
                  height: size.height / 12,
                  width: size.width - (3 * marginSize),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: GradientColors.bottomNav,
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          Assets.icons.home.provider(),
                          color: SolidColors.lightIcon,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          Assets.icons.par.provider(),
                          color: SolidColors.lightIcon,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          Assets.icons.user.provider(),
                          color: SolidColors.lightIcon,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
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
