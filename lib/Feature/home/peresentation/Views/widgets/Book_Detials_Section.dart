
import 'package:bookly_app/Core/utlis/Styles.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Book_Actions.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Book_Rating.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Custom_Book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetialsSection extends StatelessWidget {
  const BookDetialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.225),
          child: const CustomBookImageitem(imageurl: '',),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text('The Jungle Book', style: Styles.textStyle30),
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
          height: 6,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 8,
        ),
        const BooksAction(),
      ],
    );
  }
}
