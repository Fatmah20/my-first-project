import 'package:app_ra/core/const.dart';
import 'package:flutter/material.dart';
class CustomGeneralButton extends StatelessWidget {
   CustomGeneralButton({required this.text,this.onTap});

  final String? text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 120,
        decoration: BoxDecoration(
            color: kMainColor,
          borderRadius: BorderRadius.circular(24)
        ),
        child: Center(
          child: Text(
            (text!),
            style: TextStyle(
              fontSize: 18,
              color:  Colors.white,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
        ),

      ),
    );
  }
}
