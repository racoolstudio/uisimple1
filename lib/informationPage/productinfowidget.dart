import 'package:flutter/material.dart';
import 'package:ui1sample/home/data/popular.dart';

class ProductInfoWidget extends StatelessWidget {
  final Popular _popularProduct;
  ProductInfoWidget(this._popularProduct);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('${_popularProduct.image}'),
        Positioned(
            bottom: 10,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(10),
                      topEnd: Radius.circular(10))),
              child: Column(
                children: [Text('${_popularProduct.name}')],
              ),
            ))
      ],
    );
  }
}
