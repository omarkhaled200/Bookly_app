import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Core/utlis/Api_service.dart';
import 'package:bookly_app/Feature/Search/data/Repos/Home_repo_search.dart';
import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';


class HomeRepoImplSearch extends HomeRepoSearch{
final  ApiClass apiClass;

  HomeRepoImplSearch(this.apiClass);
  @override
  Future<Either<Failure, List<BookModel>>> fetchshearchdata({required String title}) async{
    try {
      var data = await apiClass.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=intitle:$title');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
  
}