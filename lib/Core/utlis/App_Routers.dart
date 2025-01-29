import 'package:bookly_app/Core/utlis/Service_locator.dart';
import 'package:bookly_app/Feature/Search/peresentation/View/Search_View.dart';
import 'package:bookly_app/Feature/Splash/peresentation/Views/Splash_View.dart';
import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/data/Repos/Home_repo_impl.dart';
import 'package:bookly_app/Feature/home/peresentation/View_model/Similar_Book_Cubit/similar_book_cubit.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/Book_Detials_View.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/Home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static final kHomeview = '/homeView';
  static final kSearchview = '/searchview';
  static final kBookDitailsview = '/BookDitailsview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeview,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kSearchview,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kBookDitailsview,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBookCubit(getIt.get<HomeRepoImpl>()),
          child:  BookDetialsView(bookModel:state.extra as BookModel ,)),
      ),
    ],
  );
}
