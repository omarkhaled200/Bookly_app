import 'package:bloc/bloc.dart';
import 'package:bookly_app/Feature/Search/data/Repos/Home_repo_search.dart';
import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/data/Repos/Home_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_view_state.dart';

class SearchViewCubit extends Cubit<SearchViewState> {
  SearchViewCubit(this.homeRepoSearch) : super(SearchViewInitial());
  final HomeRepoSearch homeRepoSearch;

  Future<void> fetchSearchedBook({required String title}) async {
    emit(SearchViewLoading());
    var result = await homeRepoSearch.fetchshearchdata(title: title);
    result.fold((Failure) {
      emit(SearchViewFailure(Failure.errmessage));
    }, (books) {
      emit(SearchViewSucces(books));
    });
  }
}
