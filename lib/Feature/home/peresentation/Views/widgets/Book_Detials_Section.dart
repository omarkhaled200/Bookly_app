import 'package:bookly_app/Core/utlis/Styles.dart';
import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Book_Actions.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Book_Rating.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Custom_Book_image_item.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class BookDetialsSection extends StatelessWidget {
  const BookDetialsSection({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.225),
          child:  CustomBookImageitem(
            imageurl:book.volumeInfo!.imageLinks!.thumbnail ?? " ",
          ),
        ),
        const SizedBox(
          height: 10,
        ),
         Text(book.volumeInfo!.title!, style: Styles.textStyle20,textAlign: TextAlign.center,),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo!.authors![0],
            textAlign: TextAlign.center,
            style: Styles.textStyle16.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
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
