import 'package:bookly_app/Core/utlis/Service_locator.dart';
import 'package:bookly_app/Feature/Search/data/Repos/Home_repo_impl_search.dart';
import 'package:bookly_app/Feature/Search/peresentation/View/widgets/Search_View_Body.dart';
import 'package:bookly_app/Feature/Search/peresentation/View_model/Search_view_Cubit/search_view_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchViewCubit(getIt.get<HomeRepoImplSearch>()),
      child: const SafeArea(
          child: Scaffold(
        body: SearchViewBody(),
      )),
    );
  }
}
