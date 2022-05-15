import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home/widgets/HomePage.dart';

void main() => runApp(UIsample1());

class UIsample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xffE29547),
      ),
      home: HomePage(),
    );
  }
}
