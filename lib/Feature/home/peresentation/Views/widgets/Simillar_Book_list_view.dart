import 'package:bookly_app/Core/Widgets/Custom_loading_indecator.dart';
import 'package:bookly_app/Core/utlis/Custom_error_message.dart';
import 'package:bookly_app/Feature/home/peresentation/View_model/Similar_Book_Cubit/similar_book_cubit.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Custom_Book_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: BlocBuilder<SimilarBookCubit, SimilarBookState>(
        builder: (context, state) {
          if (state is SimilarBookSucces) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: CustomBookImageitem(
                      imageurl: '',
                    ),
                  );
                });
          } else if (state is SimilarBookFailure) {
            return customErrormessage(errmessage: state.errmessage);
          } else {
            return const CustomLoadingIndecator();
          }
        },
      ),
    );
  }
}
