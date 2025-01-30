import 'package:bookly_app/Core/utlis/Api_service.dart';
import 'package:bookly_app/Feature/Search/data/Repos/Home_repo_impl_search.dart';
import 'package:bookly_app/Feature/home/data/Repos/Home_repo.dart';
import 'package:bookly_app/Feature/home/data/Repos/Home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiClass>(ApiClass(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiClass>()
  ));
  getIt.registerSingleton<HomeRepoImplSearch>(HomeRepoImplSearch(
    getIt.get<ApiClass>()
  ));
}
