import 'package:bloc/bloc.dart';
import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/data/Repos/Home_repo.dart';
import 'package:equatable/equatable.dart';
part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homerepo) : super(FeaturedBookInitial());
  final HomeRepo homerepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBookLoading());

    var result = await homerepo.fetchFeaturedBook();
    result.fold((Failure) {
      emit(FeaturedBookFailure(Failure.errmessage));
    }, (books) {
      emit(FeaturedBookSuccess(books));
    });
  }
}
