import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/modules/feed/views/feedScreen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: feedScreen(),
    );
  }
}
