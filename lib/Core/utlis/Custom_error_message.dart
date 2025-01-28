import 'package:bookly_app/Core/utlis/Styles.dart';
import 'package:flutter/material.dart';

class customErrormessage extends StatelessWidget {
   customErrormessage({super.key, required this.errmessage});
  final String errmessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errmessage,style: Styles.textStyle18,),
    );
  }
}