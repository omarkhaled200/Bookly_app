import 'package:bookly_app/Core/Widgets/Custom_sekelton_newest_books.dart';
import 'package:bookly_app/Core/utlis/Custom_error_message.dart';
import 'package:bookly_app/Feature/Search/peresentation/View_model/Search_view_Cubit/search_view_cubit.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchViewCubit, SearchViewState>(
      builder: (context, state) {
        if (state is SearchViewSucces) {
          return ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.symmetric(vertical: 5),
                  child: BookListViewItem(bookModel: state.books[index],),
                );
              });
        } else if (state is SearchViewFailure) {
          return customErrormessage(errmessage: state.errmessage);
        } else {
          return const  skeletonizerNewestBooks();
        }
      },
    );
  }
}
