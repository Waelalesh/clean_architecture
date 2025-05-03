import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/api_constants.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/functions/save_data.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fechFeaturedBooks();
  Future<List<BookEntity>> fechNewestBooks();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> fechFeaturedBooks() async {
    List<BookEntity> list =
        await apiService.fetchFeaturedBooks(ApiConstants.featuredBooksId);
    saveDataLocal(list, kFeaturedBox);
    return list;
  }

  @override
  Future<List<BookEntity>> fechNewestBooks() async {
    final List<BookEntity> list = await apiService.fechNewestBooks(
        ApiConstants.featuredBooksId, ApiConstants.newestBooksId);
    saveDataLocal(list, kNewestBox);
    return list;
    
  }
}
