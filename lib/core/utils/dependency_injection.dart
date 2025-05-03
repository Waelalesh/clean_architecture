import 'package:bookly/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/domain/use_cases/fech_featured_books_use_case.dart';
import 'package:bookly/Features/home/domain/use_cases/fech_newest_books_use_case.dart';
import 'package:bookly/Features/home/presentation/logic/cubit/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentation/logic/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/core/networking/dio_factory.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiServices
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<HomeLocalDataSourceImpl>(
      () => HomeLocalDataSourceImpl());
  getIt.registerLazySingleton<HomeRemoteDataSourceImpl>(
      () => HomeRemoteDataSourceImpl(getIt()));
  getIt.registerSingleton<FechFeaturedBooksUseCase>(
      FechFeaturedBooksUseCase(getIt()));
  getIt.registerSingleton<FechNewestBooksUseCase>(
      FechNewestBooksUseCase(getIt()));
  getIt.registerLazySingleton<HomeRepoImpl>(() => HomeRepoImpl(
      homeLocalDataSource: getIt(), homeRemoteDataSource: getIt()));
  getIt.registerFactory<NewestBooksCubit>(() => NewestBooksCubit(getIt()));
  getIt.registerFactory<FeaturedBooksCubit>(() => FeaturedBooksCubit(getIt()));
}
