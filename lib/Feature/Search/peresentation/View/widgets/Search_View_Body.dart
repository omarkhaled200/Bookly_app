import 'package:bookly_app/Core/utlis/Styles.dart';
import 'package:bookly_app/Feature/Search/peresentation/View/widgets/Custom_Search_View_Text_Field.dart';
import 'package:bookly_app/Feature/Search/peresentation/View/widgets/Search_List_View.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          CustomSearchViewTextField(),
          SizedBox(
            height: 10,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: SearchListView()),
        ],
      ),
    );
  }
}
