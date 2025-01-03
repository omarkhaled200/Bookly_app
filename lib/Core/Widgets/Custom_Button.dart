import 'package:bookly_app/Core/utlis/Styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,  this.borderRadius, required this.backgroundcolor, required this.textColor,  this.fontsize, required this.text});
  final BorderRadius? borderRadius;
  final Color backgroundcolor;
  final Color textColor;
 final double? fontsize;
 final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius??BorderRadius.circular(12),
          ),
          backgroundColor:backgroundcolor ,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color:textColor ,
            fontSize: fontsize,
          ),
        ),
      ),
    );
  }
}
