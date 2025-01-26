import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/data/Repos/Home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestsellerBook() {
    // TODO: implement fetchBestsellerBook
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook() {
    // TODO: implement fetchFeaturedBook
    throw UnimplementedError();
  }

}