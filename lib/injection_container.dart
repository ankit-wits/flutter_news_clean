import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:latest_app/features/auth/data/datasources/login_remote.dart';
import 'package:latest_app/features/auth/data/repositories/login_repositoryimpl.dart';
import 'package:latest_app/features/auth/domain/repositories/login_respository.dart';
import 'package:latest_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:latest_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:latest_app/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:latest_app/features/daily_news/data/repository/article_repository.dart';
import 'package:latest_app/features/daily_news/domain/repository/article_repository.dart';
import 'package:latest_app/features/daily_news/domain/usecases/get_article.dart';
import 'package:latest_app/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //Dio
  sl.registerSingleton<Dio>(Dio());
  //Dependencies
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));
  sl.registerSingleton<LoginApiService>(LoginApiService(sl()));

  sl.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(sl()));
  sl.registerSingleton<LoginRepository>(LoginRepositoryImpl(sl()));
  //UseCases
  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl()));
  sl.registerSingleton<LoginUseCase>(LoginUseCase(sl()));

  //Blocs
  sl.registerFactory<RemoteArticlesBloc>(
    () => RemoteArticlesBloc(sl()),
  );
  sl.registerFactory<AuthBloc>(
    () => AuthBloc(sl()),
  );
}
