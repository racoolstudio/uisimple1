import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home/widgets/NavController.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        primaryColor: Color(0xffE29547),
      ),
      home: HomePage(),
    );
  }
}
