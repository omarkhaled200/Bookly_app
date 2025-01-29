import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Core/utlis/Api_service.dart';
import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/data/Repos/Home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiClass apiClass;

  HomeRepoImpl(this.apiClass);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewstBook() async {
    try {
      var data = await apiClass.get(
          endpoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=computer science');
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

    @override
    Future<Either<Failure, List<BookModel>>> fetchFeaturedBook()async {
        try {
      var data = await apiClass.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
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
    
      @override
      Future<Either<Failure, List<BookModel>>> fetchsimilarbook({required String category})async {
      try {
      var data = await apiClass.get(
          endpoint: 'volumes?Filtering=free-ebooks&Sorting=relavance&q=subject:programming');
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
