import 'package:bookly_app/Core/Widgets/Custom_sekelton_newest_books.dart';
import 'package:bookly_app/Core/utlis/Custom_error_message.dart';
import 'package:bookly_app/Feature/home/peresentation/View_model/Newest_Book_Cubit/newest_book_cubit.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookSucces) {
          return ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: BookListViewItem(bookModel: state.books[index]),
                );
              });
        } else if (state is NewestBookFailure) {
          return customErrormessage(errmessage: state.errmessage);
        } else {
          return const skeletonizerNewestBooks();
        }
      },
    );
  }
}
