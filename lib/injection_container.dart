import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:latest_app/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:latest_app/features/daily_news/data/repository/article_repository.dart';
import 'package:latest_app/features/daily_news/domain/repository/article_repository.dart';
import 'package:latest_app/features/daily_news/domain/usecases/get_article.dart';
import 'package:latest_app/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:latest_app/features/events_swipe/data/data_sources/remote/events_firestore_service.dart';
import 'package:latest_app/features/events_swipe/data/repository/events_repository.dart';
import 'package:latest_app/features/events_swipe/domain/repository/events_repository.dart';
import 'package:latest_app/features/events_swipe/domain/usecases/get_events.dart';
import 'package:latest_app/features/events_swipe/presentation/bloc/events_swipe_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //Firestore
  sl.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);
  //Dio
  sl.registerSingleton<Dio>(Dio());
  //Dependencies
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));
  sl.registerSingleton<EventsSwipeFirestoreService>(
      EventsSwipeFirestoreService());

  sl.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(sl()));
  sl.registerSingleton<EventsSwipeRepository>(EventsSwipeRepositoryImpl(sl()));

  //UseCases
  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl()));
  sl.registerSingleton<GetEventsSwipeUseCase>(GetEventsSwipeUseCase(sl()));

  //Blocs
  sl.registerFactory<RemoteArticlesBloc>(
    () => RemoteArticlesBloc(sl()),
  );
  sl.registerFactory<EventsSwipeBloc>(
    () => EventsSwipeBloc(sl()),
  );
}
