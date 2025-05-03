import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'newest_books_state.freezed.dart';

@freezed
class NewestBooksState with _$NewestBooksState {
  const factory NewestBooksState.initial() = _NewestBooksInitial;
  const factory NewestBooksState.loading() = _NewestBooksLoading;
  const factory NewestBooksState.error(
    String message,
  ) = _NewestBooksError;
  const factory NewestBooksState.success(List<BookEntity> books) =
      _NewestBooksSuccess;
}
