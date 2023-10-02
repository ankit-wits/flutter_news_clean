import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latest_app/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:latest_app/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:latest_app/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:latest_app/injection_container.dart';

import 'firebase_options.dart';

void main() async {
  await initializeDependencies();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
        title: 'UniSwipe',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const DailyNews(),
      ),
    );
  }
}
