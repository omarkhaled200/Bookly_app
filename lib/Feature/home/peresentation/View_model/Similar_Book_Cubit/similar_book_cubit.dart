import 'package:bloc/bloc.dart';
import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/data/Repos/Home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitial());
    final HomeRepo homeRepo;

  Future<void> fetchSimilarBook({required String category}) async {
    emit(SimilarBookLoading());
    var result = await homeRepo.fetchsimilarbook(category: category);
    result.fold((Failure) {
      emit(SimilarBookFailure(Failure.errmessage));
    }, (books) {
      emit(SimilarBookSucces(books));
    });
  }
}
