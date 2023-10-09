import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latest_app/features/events_swipe/presentation/bloc/events_swipe_bloc.dart';
import 'package:latest_app/features/events_swipe/presentation/pages/get_events.dart';
import 'package:latest_app/injection_container.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EventsSwipeBloc>(
      create: (context) => sl()..add(GetEventsSwipe()),
      child: MaterialApp(
        title: 'UniSwipe',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const EventsSwipePage(),
      ),
    );
  }
}
