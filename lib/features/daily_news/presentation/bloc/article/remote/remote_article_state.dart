import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:latest_app/features/daily_news/domain/entities/article.dart';

abstract class RemoteArticleState extends Equatable {
  final List<ArticleEntity>? articles;
  final DioError? error;

  const RemoteArticleState({this.articles, this.error});

  @override
  List<Object?> get props => [articles!, error!];
}

class RemoteArticlesLoading extends RemoteArticleState {
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticleState {
  @override
  final List<ArticleEntity>? articles;
  const RemoteArticlesDone(this.articles);
}

class RemoteArticlesError extends RemoteArticleState {
  @override
  final DioError? error;
  const RemoteArticlesError(this.error);
}
