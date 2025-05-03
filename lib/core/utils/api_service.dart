import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/core/utils/api_constants.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(
  baseUrl: ApiConstants.baseUrl,
)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(
    "volumes?q={id}",
  )
  Future<List<BooksModel>> fetchFeaturedBooks(@Path("id") String id);
  @GET(
    "volumes?Sorting={sortingId}&q={id}",
  )
  Future<List<BooksModel>> fechNewestBooks(
      @Path("id") String id, @Path("sortingId") String sortingId);
}
