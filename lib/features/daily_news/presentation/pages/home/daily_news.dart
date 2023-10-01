import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latest_app/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:latest_app/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';

import '../../widgets/article_view.dart';

class DailyNews extends StatelessWidget {
  const DailyNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Articles"),
      ),
      body: BlocBuilder<RemoteArticlesBloc, RemoteArticleState>(
        builder: (context, state) {
          if (state is RemoteArticlesLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is RemoteArticlesError) {
            return const Center(
              child: Text("Something went wrong!"),
            );
          }
          if (state is RemoteArticlesDone) {
            return ListView.builder(
              itemCount: state.articles?.length,
              itemBuilder: (context, index) {
                return ArticleView(
                  state: state,
                  index: index,
                );
              },
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
