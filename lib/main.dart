import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:questry/app/modules/authentication/views/sign_-in_page.dart';
import 'package:questry/app/modules/authentication/views/sign_up_page.dart';
import 'package:questry/app/modules/feed/views/pages/answer_page.dart';
import 'package:questry/app/modules/feed/views/pages/comment_section.dart';
import 'package:questry/app/modules/home/home_page.dart';

import 'app/modules/feed/views/feedScreen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}
