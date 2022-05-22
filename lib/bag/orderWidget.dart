import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui1sample/home/constant.dart';
import 'package:ui1sample/home/data/popular.dart';

class BagWidget extends StatefulWidget {
  final Popular _popular;
  const BagWidget(this._popular);

  @override
  State<BagWidget> createState() => _BagWidgetState();
}

class _BagWidgetState extends State<BagWidget> {
  var counter;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    counter = widget._popular.qty;
    return Visibility(
      visible: isVisible,
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget._popular.image),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Positioned(
                left: 92,
                child: fontType(widget._popular.name, const Color(0xff121212),
                    14, FontWeight.w400)),
            Positioned(
                bottom: 0,
                left: 92,
                child: Container(
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
                              widget._popular.qty = counter;
                            });
                          },
                          child: SvgPicture.asset('assets/minus.svg')),
                      const SizedBox(
                        width: 16,
                      ),
                      fontType('$counter', Colors.black, 12, FontWeight.w400),
                      const SizedBox(
                        width: 16,
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              counter += 1;
                              widget._popular.qty = counter;
                            });
                          },
                          child: Container(
                              child: SvgPicture.asset('assets/plus.svg'))),
                    ],
                  ),
                )),
            Positioned(
                top: 25,
                left: 92,
                child: fontType('Qty : ${widget._popular.qty}',
                    const Color(0xffAAAAAA), 12, FontWeight.w400)),
            Positioned(
              right: 0,
              child: GestureDetector(
                  onTap: () => setState(() {
                        isVisible = false;
                      }),
                  child: SvgPicture.asset('assets/close.svg')),
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: fontType(widget._popular.price, const Color(0xffE29547),
                    16, FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
