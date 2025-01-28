import 'package:bookly_app/Core/Widgets/Custom_loading_indecator.dart';
import 'package:bookly_app/Core/utlis/Custom_error_message.dart';
import 'package:bookly_app/Feature/home/peresentation/View_model/Featured_Book_Cubit/featured_book_cubit.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Custom_Book_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: CustomBookImageitem());
                }),
          );
        } else if (state is FeaturedBookFailure) {
          return customErrormessage(errmessage: state.errmessage);
        } else {
        return const CustomLoadingIndecator();
        }
      },
    );
  }
}
