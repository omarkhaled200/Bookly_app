
import 'package:bookly_app/Core/utlis/App_Routers.dart';
import 'package:bookly_app/Core/utlis/Service_locator.dart';
import 'package:bookly_app/Feature/home/data/Repos/Home_repo_impl.dart';
import 'package:bookly_app/Feature/home/peresentation/View_model/Featured_Book_Cubit/featured_book_cubit.dart';
import 'package:bookly_app/Feature/home/peresentation/View_model/Newest_Book_Cubit/newest_book_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/constant.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBookCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
