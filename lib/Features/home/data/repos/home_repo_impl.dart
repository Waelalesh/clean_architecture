import 'package:bookly/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/functions/save_data.dart';
import 'package:bookly/core/utils/extensions.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;
  HomeRepoImpl(
      {required this.homeLocalDataSource, required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      List<BookEntity> books = homeLocalDataSource.fechFeaturedBooks();
      if (books.isNotNullAndNotEmpty()) {
        return right(books);
      }
      books = await homeRemoteDataSource.fechFeaturedBooks();
      return right(books);
    } catch (e) {
      return checkError(e);
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewsetBooks() async {
    try {
      List<BookEntity> books = homeLocalDataSource.fechNewestBooks();
      if (books.isNotNullAndNotEmpty()) {
        return right(books);
      }
      books = await homeRemoteDataSource.fechNewestBooks();
      return right(books);
    }  catch (e) {
      return checkError(e);
    }
  }
}
