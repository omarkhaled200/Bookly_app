import 'package:bookly_app/Core/Widgets/Custom_Button.dart';
import 'package:bookly_app/Core/utlis/Styles.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Book_Actions.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Book_Rating.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/CustomBookDetialsAppBar.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Custom_Book_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetialsViewbody extends StatelessWidget {
  const BookDetialsViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomBookDetialsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustomBookImageitem(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text('The Jungle Book', style: Styles.textStyle30),
          const SizedBox(
            height: 2,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Omar Khaled',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
            const SizedBox(
            height: 18,
          ),
          const
           BooksAction(),
        ],
      ),
    );
  }
}
