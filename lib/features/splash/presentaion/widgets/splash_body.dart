import 'package:app_ra/core/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../../on_boading/presentaion/on_boading_view.dart';

class SplashVeiwBody extends StatefulWidget {
  const SplashVeiwBody({Key? key}) : super(key: key);

  @override
  State<SplashVeiwBody> createState() => _SplashVeiwBodyState();
}

class _SplashVeiwBodyState extends State<SplashVeiwBody> {
  @override
 void initState(){
    goToNextView();
  }
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
          child: Text(
        'Recipe Finder',
        style: TextStyle(
            color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 26),
      )),


    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3),()
    {Navigator.push(context, MaterialPageRoute(builder:
        (context){
   return   OnBoadingView();
    },
    ));});
}}
