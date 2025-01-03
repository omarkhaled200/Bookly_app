import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Simillar_Book_list_view.dart';
import 'package:flutter/material.dart';

class SimillarBookSection extends StatelessWidget {
  const SimillarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You Can also Like'),
        SizedBox(
          height: 8,
        ),
        SimilarBookListView(),
      ],
    );
  }
}
