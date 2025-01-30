import 'package:bloc/bloc.dart';
import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/data/Repos/Home_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_view_state.dart';

class SearchViewCubit extends Cubit<SearchViewState> {
  SearchViewCubit(this.homeRepo) : super(SearchViewInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBook({required String category}) async {
    emit(SearchViewLoading());
    var result = await homeRepo.fetchsimilarbook(category: category);
    result.fold((Failure) {
      emit(SearchViewFailure(Failure.errmessage));
    }, (books) {
      emit(SearchViewSucces(books));
    });
  }

}
