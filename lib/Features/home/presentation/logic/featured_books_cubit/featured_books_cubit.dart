import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/domain/use_cases/fech_featured_books_use_case.dart';
import 'package:bookly/Features/home/presentation/logic/featured_books_cubit/featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksState.initial());
  final FechFeaturedBooksUseCase featuredBooksUseCase;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksState.loading());
    var result = await featuredBooksUseCase.call();
    result.fold((failure) {
      emit(FeaturedBooksState.error(failure.message));
    }, (books) {
      emit(FeaturedBooksState.success(books));
    });
  }
}
