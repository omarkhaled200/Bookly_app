import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Custom_Book_image_item.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
                padding: EdgeInsets.all(4.0), child: CustomBookImageitem());
          }),
    );
  }
}
