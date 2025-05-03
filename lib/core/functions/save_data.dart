import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

void saveDataLocal(List<BookEntity> booksList, String boxName) {
  Box books = Hive.box(boxName);
  books.addAll(booksList);
}

checkError(e) {
  if (e is DioException) {
    return left(ServerFailure.fromDioError(e));
  }
  return left(ServerFailure(e.toString()));
}
