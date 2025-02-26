import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:srimad_bhagvad_gita/views/Chapter1.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter10.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter11.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter12.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter13.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter14.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter15.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter16.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter17.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter18.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter2.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter3.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter4.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter5.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter6.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter7.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter8.dart';
import 'package:srimad_bhagvad_gita/views/screens/Chapter9.dart';
import 'package:srimad_bhagvad_gita/views/screens/Home%20Page.dart';
import 'package:srimad_bhagvad_gita/views/screens/splash_screen.dart';

import 'helper/provider/theme_privider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences pref = await SharedPreferences.getInstance();

  bool isvisitedchanged = pref.getBool("isthemechanged") ?? true;

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (context) => ThemeProvider(isvisitedchanged)),
    ],
    builder: (context, _) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: TextTheme(displayLarge: TextStyle(color: Colors.green))),
        darkTheme: ThemeData.dark(),
        themeMode: (Provider.of<ThemeProvider>(context).isdark
            ? ThemeMode.dark
            : ThemeMode.light),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          'home': (context) => HomePage(),
          'Chapter1': (context) => Chapter1(),
          'Chapter2': (context) => Chapter2(),
          'Chapter3': (context) => Chapter3(),
          'Chapter4': (context) => Chapter4(),
          'Chapter5': (context) => Chapter5(),
          'Chapter6': (context) => Chapter6(),
          'Chapter7': (context) => Chapter7(),
          'Chapter8': (context) => Chapter8(),
          'Chapter9': (context) => Chapter9(),
          'Chapter10': (context) => Chapter10(),
          'Chapter11': (context) => Chapter11(),
          'Chapter12': (context) => Chapter12(),
          'Chapter13': (context) => Chapter13(),
          'Chapter14': (context) => Chapter14(),
          'Chapter15': (context) => Chapter15(),
          'Chapter16': (context) => Chapter16(),
          'Chapter17': (context) => Chapter17(),
          'Chapter18': (context) => Chapter18(),
        },
      );
    },
  ));
}
