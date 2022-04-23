// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:new_pustak/constant/color.dart';
import 'package:new_pustak/view/dashboard.dart';
import 'package:new_pustak/view/letgo.dart';
import 'package:new_pustak/view/signin.dart';
import 'package:new_pustak/view/signup.dart';
import 'package:new_pustak/view/splash.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:native_notify/native_notify.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NativeNotify.initialize(547, 'w2QukMZIkyMVjvft2ZzySk');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
      publicKey: "test_public_key_dc74e0fd57cb46cd93832aee0a390234",
      builder: (context, navigatorKey) {
        return MaterialApp(
            title: 'E-Pustak',
            debugShowCheckedModeBanner: false,
            navigatorKey: navigatorKey,
            supportedLocales: const [
              Locale('en', 'US'),
              Locale('ne', 'NP'),
            ],
            localizationsDelegates: const [
              KhaltiLocalizations.delegate,
            ],
            // home: Dashboard(),
            theme: ThemeData(
              primaryColor: primarycolor,
            ),
            routes: {
              // ignore: prefer_const_constructors
              "/": (context) => Splash(),
              "letgo": (context) => LetGo(),
              "signin": (context) => Signin(),
              "signup": (context) => Signup(),
              "dashboard": (context) => Dashboard(),
            });
      },
    );
  }
}
