import 'package:bookly_app/Core/Widgets/Custom_loading_indecator.dart';
import 'package:bookly_app/Core/Widgets/Custom_sekelton_featured_books.dart';
import 'package:bookly_app/Core/utlis/App_Routers.dart';
import 'package:bookly_app/Core/utlis/Custom_error_message.dart';
import 'package:bookly_app/Feature/home/peresentation/View_model/Featured_Book_Cubit/featured_book_cubit.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Custom_Book_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Featuredlistview extends StatelessWidget {
  const Featuredlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding:const EdgeInsets.all(4.0),
                    child: GestureDetector(onTap: () {
                      GoRouter.of(context).push(AppRouters.kBookDitailsview,extra: state.books[index]);
                    }, child: CustomBookImageitem(imageurl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,)),
                  );
                }),
          );
        } else if (state is FeaturedBookFailure) {
          return customErrormessage(errmessage: state.errmessage);
        } else {
      return const skeletonfeaturedbooks();
        }
      },
    );
  }
}
