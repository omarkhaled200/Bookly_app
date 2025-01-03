import 'package:bookly_app/Feature/home/peresentation/Views/widgets/CustomBookDetialsAppBar.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Custom_Book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetialsViewbody extends StatelessWidget {
  const BookDetialsViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
        const  CustomBookDetialsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.19 ),
            child:const CustomBookImageitem(),
          ),
        ],
      ),
    );
  }
}
