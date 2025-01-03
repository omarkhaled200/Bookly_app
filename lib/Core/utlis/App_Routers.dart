import 'package:bookly_app/Feature/Splash/peresentation/Views/Splash_View.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/Book_Detials_View.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/Home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static final kHomeview = '/homeView';
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
        path: kBookDitailsview,
        builder: (context, state) => const BookDetialsView(),
      ),
    ],
  );
}
