import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Book_Detials_Section.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/CustomBookDetialsAppBar.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Simillar_Book_Section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetialsViewbody extends StatelessWidget {
  const BookDetialsViewbody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
              const  CustomBookDetialsAppBar(),
                BookDetialsSection(book:bookModel ,),
            const    Expanded(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
            const    SimillarBookSection(),
            const    SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
