import 'package:bloc/bloc.dart';
import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/data/Repos/Home_repo.dart';
import 'package:equatable/equatable.dart';


part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBookLoading());
    var result = await homeRepo.fetchNewstBook();
    result.fold((Failure) {
      emit(NewestBookFailure(Failure.errmessage));
    }, (books) {
      emit(NewestBookSucces(books));
    });
  }
}
