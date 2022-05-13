import 'package:flutter/material.dart';
import 'package:ui1sample/informationPage/productinfowidget.dart';

import '../home/data/popular.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProductInfoWidget(
            Popular(
                name: 'Sverom chair', image: 'assets/ch1.png', price: '\$400'),
          )
        ],
      ),
    );
  }
}
