part of 'search_view_cubit.dart';

sealed class SearchViewState extends Equatable {
  const SearchViewState();

  @override
  List<Object> get props => [];
}

final class SearchViewInitial extends SearchViewState {}

final class SearchViewLoading extends SearchViewState {}

final class SearchViewFailure extends SearchViewState {
  final String errmessage;

const  SearchViewFailure(this.errmessage);
}

final class SearchViewSucces extends SearchViewState {
  final List<BookModel> books;

const  SearchViewSucces(this.books);
}
