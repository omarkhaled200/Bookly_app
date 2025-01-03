import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Book_Detials_Section.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/CustomBookDetialsAppBar.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Simillar_Book_Section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetialsViewbody extends StatelessWidget {
  const BookDetialsViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomBookDetialsAppBar(),
                BookDetialsSection(),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SimillarBookSection(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
