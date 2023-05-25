import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/const.dart';
import '../../../../core/utils/size_config.dart';

class CustomDotIndecorator extends StatelessWidget {
  const CustomDotIndecorator({required this.indexDot});

  final double? indexDot;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: SizeConfig.defaultSize! * 10,
        right: SizeConfig.defaultSize! * 10,
        bottom: SizeConfig.defaultSize! * 19,
        child: DotsIndicator(
          dotsCount: 3,
          position: indexDot!,
          decorator: const DotsDecorator(
              activeColor: kMainColor,
              activeSize: Size(25, 25),
              size: Size(25, 25)),
        ));
  }
}
