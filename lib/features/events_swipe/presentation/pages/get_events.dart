import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latest_app/features/events_swipe/presentation/bloc/events_swipe_bloc.dart';

class EventsSwipePage extends StatelessWidget {
  const EventsSwipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<EventsSwipeBloc, EventsSwipeState>(
        builder: (context, state) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                context.read<EventsSwipeBloc>().add(GetEventsSwipe());
              },
              child: const Text("HII"),
            ),
          );
        },
      ),
    );
  }
}
