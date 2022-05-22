import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui1sample/home/constant.dart';
import 'package:ui1sample/informationPage/productinfowidget.dart';

import '../home/data/popular.dart';

class Info extends StatelessWidget {
  Popular p;
  Info(this.p);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductInfoWidget(p),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.white),
          child: Container(
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(color: Color(0xffDEDEDE), width: 0.5))),
            child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: [
                  BottomNavigationBarItem(
                    label: 'WishList',
                    icon: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 30,
                          top: 16,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffAAAAAA),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        width: 40,
                        height: 40,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            'assets/fav.svg',
                            width: 20,
                            color: const Color(0xffAAAAAA),
                          ),
                        ),
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'AddToBag',
                    icon: Container(
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff121212),
                        ),
                        height: 40,
                        child: Center(
                          child: GestureDetector(
                            child: fontType('Add to bag', Colors.white, 14,
                                FontWeight.w600),
                          ),
                        )),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
