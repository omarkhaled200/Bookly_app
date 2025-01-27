part of 'featured_book_cubit.dart';

sealed class FeaturedBookState extends Equatable {
  const FeaturedBookState();

  @override
  List<Object> get props => [];
}

final class FeaturedBookInitial extends FeaturedBookState {}

final class FeaturedBookLoading extends FeaturedBookState {}

final class FeaturedBookFailure extends FeaturedBookState {
  final String errmessage;

const  FeaturedBookFailure(this.errmessage);


}

final class FeaturedBookSuccess extends FeaturedBookState {
  final List<BookModel> books;

const  FeaturedBookSuccess(this.books);
}
