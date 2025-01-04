import 'package:bookly_app/Feature/Search/peresentation/View/widgets/Search_View_Body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SearchViewBody(),
    ));
  }
}
