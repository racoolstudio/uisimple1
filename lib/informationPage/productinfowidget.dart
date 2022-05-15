import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui1sample/home/constant.dart';
import 'package:ui1sample/home/data/popular.dart';

class ProductInfoWidget extends StatefulWidget {
  final Popular _popularProduct;
  const ProductInfoWidget(this._popularProduct);

  @override
  State<ProductInfoWidget> createState() => _ProductInfoWidgetState();
}

class _ProductInfoWidgetState extends State<ProductInfoWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: const Color(0xffE5E5E5),
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
                          fontType(widget._popularProduct.price,
                              const Color(0xffE29547), 20, FontWeight.w600),
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
                                      });
                                    },
                                    child:
                                        SvgPicture.asset('assets/minus.svg')),
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
                      margin: const EdgeInsets.only(top: 30),
                      height: 71,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xffFAFAFA),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
