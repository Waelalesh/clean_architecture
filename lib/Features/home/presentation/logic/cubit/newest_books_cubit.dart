import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/domain/use_cases/fech_newest_books_use_case.dart';
import 'package:bookly/Features/home/presentation/logic/cubit/newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fechNewestBooksUseCase) : super(NewestBooksState.initial());
  final FechNewestBooksUseCase fechNewestBooksUseCase;
   Future<void> fetchNewestBooks() async {
    emit(NewestBooksState.loading());
    var result = await fechNewestBooksUseCase.call();
    result.fold((failure) {
      emit(NewestBooksState.error(failure.message));
    }, (books) {
      emit(NewestBooksState.success(books));
    });
  }
}
