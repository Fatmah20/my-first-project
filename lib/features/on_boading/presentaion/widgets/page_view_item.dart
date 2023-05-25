
import 'package:flutter/material.dart';

class PageVeiwItem extends StatelessWidget {
   PageVeiwItem({required this.image,required this.title,required this.description});

  String? image;
  String? title;
  String? description;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 140,),
       Container(
            child: Image.asset(image!,height: 300,)),
        SizedBox(height: 30,),
        Text(title!,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold ),),
        SizedBox(height: 30,),
        Text(description!,style: TextStyle(color: Color(0xFFa8a8a8)),),
        Spacer(flex: 1,),
      ],
    );
  }
}
