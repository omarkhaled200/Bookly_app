
import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
Future<Either<Failure,List<BookModel>>> fetchNewstBook();
Future<Either<Failure,List<BookModel>>>  fetchFeaturedBook();
Future<Either<Failure,List<BookModel>>>  fetchsimilarbook({required String category});
}
