import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui1sample/home/constant.dart';
import 'package:ui1sample/home/data/popular.dart';
import 'package:ui1sample/home/data/selected.dart';

import '../home/data/popular.dart';
import '../home/widgets/popularwidget.dart';

class ProductInfoWidget extends StatefulWidget {
  final Popular _popularProduct;
  ProductInfoWidget(this._popularProduct);
  final List _popularList = Popular.popularinfo();

  @override
  State<ProductInfoWidget> createState() => _ProductInfoWidgetState();
}

class _ProductInfoWidgetState extends State<ProductInfoWidget> {
  int counter = 0;
  Color active = const Color(0xffE29547);
  Color activeback = const Color(0xffFFEEDD);
  Color inactive = const Color(0xffAAAAAA);
  bool clicked = false;
  List selected = Selected.selected();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 620,
              color: Colors.white,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 319,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget._popularProduct.image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 300,
                    child: Container(
                      height: 333,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(25),
                              topEnd: Radius.circular(25))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 24.0, left: 20),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: fontType(widget._popularProduct.name,
                                  Colors.black, 20, FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 8),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Row(children: [
                                fontType(
                                    widget._popularProduct.price,
                                    const Color(0xffE29547),
                                    20,
                                    FontWeight.w600),
                                const SizedBox(
                                  width: 200,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (counter > 0) {
                                                counter -= 1;
                                              } else {
                                                counter = 0;
                                              }
                                              widget._popularProduct.qty =
                                                  counter;
                                              if (widget._popularProduct.qty >
                                                  0) {
                                                selected.add(
                                                    widget._popularProduct);
                                              }
                                            });
                                          },
                                          child: SvgPicture.asset(
                                              'assets/minus.svg')),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      fontType('$counter', Colors.black, 12,
                                          FontWeight.w400),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              counter += 1;
                                              widget._popularProduct.qty =
                                                  counter;
                                              if (widget._popularProduct.qty >
                                                  0) {
                                                selected.add(
                                                    widget._popularProduct);
                                              }
                                            });
                                          },
                                          child: Container(
                                              child: SvgPicture.asset(
                                                  'assets/plus.svg'))),
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            height: 71,
                            width: 335,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xffFAFAFA),
                            ),
                            child: Container(
                              margin: const EdgeInsets.only(top: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Column(children: [
                                      SvgPicture.asset(
                                          '${widget._popularProduct.rateImg}'),
                                      const SizedBox(
                                        height: 8.31,
                                      ),
                                      Row(
                                        children: [
                                          fontType(
                                              '${widget._popularProduct.reviews}Review(s)',
                                              const Color(0xffAAAAAA),
                                              12,
                                              FontWeight.w400),
                                          SvgPicture.asset('assets/>.svg')
                                        ],
                                      ),
                                    ]),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  fontType(
                                      '${widget._popularProduct.rateNum}',
                                      const Color(0xff121212),
                                      12,
                                      FontWeight.w400),
                                  const SizedBox(
                                    width: 85,
                                  ),
                                  Image.asset('assets/avatar.png'),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 17),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () => setState(() {
                                          print(selected);
                                        }),
                                        child: topic('Description', active, 14,
                                            FontWeight.w600, activeback),
                                      ),
                                      topic('Materials', inactive, 14,
                                          FontWeight.w600, Colors.white),
                                      topic('Reviews', inactive, 14,
                                          FontWeight.w600, Colors.white),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 20),
                                    child: fontType(
                                        'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit Nunc consectetur velit at\n massa vehicula, quis fringilla urna gravida.',
                                        const Color(0xffAAAAAA),
                                        14,
                                        FontWeight.w400),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 56,
                      left: 20,
                      child: GestureDetector(
                          onTap: () => setState(() {
                                Navigator.pop(context);
                              }),
                          child: topIcon('arrowLeft'))),
                  Positioned(top: 56, right: 20, child: topIcon('union')),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16, top: 24),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: fontType('Similar products',
                          const Color(0xff121212),16, FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 30, top: 21),
                    height: 250,
                    child: ListView.separated(
                      separatorBuilder: ((context, _) => const SizedBox(
                            width: 15,
                          )),
                      itemBuilder: (context, index) =>
                          PopularWidget(widget._popularList[index]),
                      itemCount: widget._popularList.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class topIcon extends StatelessWidget {
  String name;
  topIcon(this.name);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          color: const Color(0xffBFB5AB).withOpacity(.5),
          child: SizedBox(
            width: 32,
            height: 32,
            child: Center(
              child: SvgPicture.asset(
                'assets/$name.svg',
                color: Colors.white,
                width: 16,
                height: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class topic extends StatelessWidget {
  String name;
  Color color;
  Color bgColor;
  double size;
  FontWeight weight;
  topic(this.name, this.color, this.size, this.weight, this.bgColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 106,
      height: 37,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: fontType(name, color, size, weight)),
    );
  }
}
