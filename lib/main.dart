import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:questry/app/modules/authentication/views/sign_-in_page.dart';
import 'package:questry/app/modules/authentication/views/sign_up_page.dart';
import 'package:questry/app/modules/feed/views/pages/answer_page.dart';
import 'package:questry/app/modules/feed/views/pages/comment_section.dart';
import 'package:questry/app/modules/home/home_page.dart';

import 'app/modules/feed/views/feedScreen.dart';
import 'app/modules/profile/views/profile_page.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff2e3b5b),
          accentColor: Color(0xff2e3b5b),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold))),
      home: ProfilePage(),
    );
  }
}
