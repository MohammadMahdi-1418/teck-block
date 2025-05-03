import 'package:flutter/material.dart';
import 'package:tech_block/colors/colors_ui.dart';
import 'package:tech_block/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(
  //       statusBarColor: SolidColors.erorColor,
  //       statusBarIconBrightness: Brightness.dark,
  //       systemNavigationBarColor: SolidColors.systemNavigationBarColor,
  //       systemNavigationBarIconBrightness: Brightness.dark),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          labelLarge: TextStyle(
            fontFamily: 'dana',
            fontWeight: FontWeight.w600,
            color: SolidColors.posterTitle,
            fontSize: 18,
          ),
          labelMedium: TextStyle(
            fontFamily: 'dana',
            fontWeight: FontWeight.w400,
            color: SolidColors.posterTitle,
            fontSize: 14,
          ),
          labelSmall: TextStyle(
            fontFamily: 'dana',
            fontWeight: FontWeight.w400,
            color: SolidColors.posterSubTitle,
            fontSize: 13,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('fa'), // Persian
      ],
      locale: const Locale('fa'), // Persian,
      home: const SplashScreen(),
    );
  }
}

String getFarsiNumber(String number) {
  const en = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const fa = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

  en.forEach((element) {
    number = number.replaceAll(element, fa[en.indexOf(element)]);
    // fa[en.indexOf(element)]
  });

  return number;
}
