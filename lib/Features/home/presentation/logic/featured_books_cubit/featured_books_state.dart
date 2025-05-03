import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'featured_books_state.freezed.dart';

@freezed
class FeaturedBooksState with _$FeaturedBooksState {
  const factory FeaturedBooksState.initial() = _FeaturedBooksInitial;
  const factory FeaturedBooksState.loading() = _FeaturedBooksLoading;
  const factory FeaturedBooksState.error(
    String message,
  ) = _FeaturedBooksError;
  const factory FeaturedBooksState.success(List<BookEntity> books) =
      _FeaturedBooksSuccess;
}
