
import 'package:bookly_app/Core/Widgets/Custom_Button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            backgroundcolor: Colors.white,
            textColor: Colors.black,
            text: '19.99€',
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),),      
          ),
        ),
        Expanded(
          child: CustomButton(
            backgroundcolor: Color(0xffEC8261),
            textColor: Colors.white,
            text: 'Free Preview',
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ), 
              fontsize: 16,     
          ),
        ),
      ],
    );
  }
}
