import 'package:app_ra/core/utils/size_config.dart';
import 'package:app_ra/screens/signin_page.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_buttons.dart';
import 'custom_dotindcator.dart';
import 'custom_page_view.dart';

class OnBoadingViewBody extends StatefulWidget {
  const OnBoadingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBoadingViewBody> createState() => _OnBoadingViewBodyState();
}

class _OnBoadingViewBodyState extends State<OnBoadingViewBody> {

  PageController? pageController;
  @override
  void initState() {
   pageController=PageController(
     initialPage: 0
   )..addListener(() { setState(() {

   });});
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Stack(children: [
       CustomPageVeiw(pageController: pageController,),
       CustomDotIndecorator(
        indexDot: pageController!.hasClients? pageController?.page:0,
      ),
      Visibility(
        visible: pageController!.hasClients?(pageController!.page ==2 ? false:true):true,
        child: Positioned(
          top: SizeConfig.defaultSize! * 10,
          right: MediaQuery.of(context).size.width * .1,
          child: const Text(
            'Skip',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: Color(0xff898989),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
      Positioned(
          left: SizeConfig.defaultSize! * 12,
          right: SizeConfig.defaultSize! * 12,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(
            onTap: (){
              if(pageController!.page! <2){
                pageController?.nextPage(
                    duration: Duration(microseconds: 500), curve: Curves.easeIn);
              }else{
                Navigator.push(context, MaterialPageRoute(builder:(context){
                  return SignINPage();
                } ),);
              }
            },
            text: pageController!.hasClients?(pageController!.page==2?'Gat Started':'Next'):'Next',
          )),
    ]);
  }
}
