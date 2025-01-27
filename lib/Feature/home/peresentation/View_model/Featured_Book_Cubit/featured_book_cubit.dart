import 'package:bloc/bloc.dart';
import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit() : super(FeaturedBookInitial());
}
