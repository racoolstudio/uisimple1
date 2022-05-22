import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui1sample/bag/orderWidget.dart';
import 'package:ui1sample/home/constant.dart';

import '../home/data/popular.dart';
import '../home/widgets/popularwidget.dart';

class BagWidgetPage extends StatefulWidget {
  @override
  State<BagWidgetPage> createState() => _BagWidgetPageState();
}

class _BagWidgetPageState extends State<BagWidgetPage> {
  final List _p = Popular.popularinfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () => setState(() {
                Navigator.pop(context);
              }),
              child: Container(
                height: 32,
                width: 32,
                margin: const EdgeInsets.only(left: 10, top: 21),
                padding: const EdgeInsets.all(6),
                child: SvgPicture.asset(
                  'assets/arrowLeft.svg',
                  color: const Color(0xff121212),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 30),
            child: fontType('My Shopping Bag', const Color(0xff121212), 24,
                FontWeight.w600),
          ),
          Container(
            margin: const EdgeInsets.only(top: 36),
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => BagWidget(_p[index]),
              itemCount: _p.length,
              separatorBuilder: (context, _) => Column(
                children: const [
                  SizedBox(
                    height: 14,
                  ),
                  Divider(
                    color: Color(0xffDEDEDE),
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: const Divider(
              color: Color(0xffF1F1F1),
              thickness: 5,
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 16, left: 20, bottom: 16, right: 12),
                height: 40,
                width: 251,
                child: TextField(
                  textAlignVertical: const TextAlignVertical(y: 0.5),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xffDEDEDE),
                          width: 1,
                          style: BorderStyle.solid,
                        )),
                    hintText: 'Insert you coupon code',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffAAAAAA)),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16, top: 16),
                height: 40,
                width: 72,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff121212),
                ),
                child: Center(
                    child:
                        fontType('Apply', Colors.white, 14, FontWeight.w600)),
              ),
            ],
          ),
          const Divider(
            color: Color(0xffF1F1F1),
            thickness: 5,
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16, top: 24),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: fontType('Sofa you might like',
                      const Color(0xff121212), 16, FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30, top: 21),
                height: 250,
                child: ListView.separated(
                  separatorBuilder: ((context, _) => const SizedBox(
                        width: 15,
                      )),
                  itemBuilder: (context, index) => PopularWidget(_p[index]),
                  itemCount: _p.length - 2,
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border:
                Border(top: BorderSide(color: Color(0xffDEDEDE), width: 0.5))),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              label: 'total',
              icon: Container(
                margin: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      fontType('Total', const Color(0xffAAAAAA), 14,
                          FontWeight.w400),
                      fontType('\$4000', const Color(0xffE29547), 20,
                          FontWeight.w600)
                    ],
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'checkout',
              icon: Container(
                margin: const EdgeInsets.only(right: 20),
                width: 216,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff121212),
                ),
                child: Center(
                  child: fontType(
                      'Proceed to checkout', Colors.white, 14, FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
