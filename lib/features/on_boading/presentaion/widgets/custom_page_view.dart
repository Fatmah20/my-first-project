
import 'package:app_ra/features/on_boading/presentaion/widgets/page_view_item.dart';
import 'package:flutter/material.dart';
class CustomPageVeiw extends StatelessWidget {
  const CustomPageVeiw({@required this.pageController});

  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageVeiwItem(image: 'assets/images/illustration1-removebg-preview.png',
          title: 'Find Your Special Recipe',
          description: 'You can search in an easy\n'
              'and simple way to get the'
              ' \n          best recipes',),
        PageVeiwItem(image: 'assets/images/illustration2-removebg-preview.png',
          title: 'Choose the recipe You liked ',
          description: 'When You choose the recipe\n'
              'you liked, you can order it'
              ' \n          more than once',),
        PageVeiwItem(image: 'assets/images/illustration3-removebg-preview.png',
          title: 'Put all Your favorite recipe in the cart',
          description: 'When You put Your favorite recipe in'
              '\n an carts, You can order them at same\n   '
              '     time as much as you want.',),
      ],
    );
  }
}
