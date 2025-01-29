import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/peresentation/View_model/Similar_Book_Cubit/similar_book_cubit.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Book_Detials_View_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetialsView extends StatefulWidget {
  const BookDetialsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetialsView> createState() => _BookDetialsViewState();
}

class _BookDetialsViewState extends State<BookDetialsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBookCubit>(context).fetchSimilarBook(category:widget.bookModel.volumeInfo!.categories![0] );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDetialsViewbody(),
      ),
    );
  }
}
