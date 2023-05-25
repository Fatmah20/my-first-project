
import 'package:flutter/material.dart';

import 'features/splash/presentaion/splash_view.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashVeiw(),
    );
  }
}
