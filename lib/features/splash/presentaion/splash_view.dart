import 'package:app_ra/features/splash/presentaion/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class SplashVeiw extends StatelessWidget {
  const SplashVeiw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body:SplashVeiwBody(),);
  }
}
