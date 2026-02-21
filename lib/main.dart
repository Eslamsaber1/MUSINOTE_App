import 'package:flutter/material.dart';
import 'package:musinote/core/utils/on_generate_routes.dart';
import 'package:musinote/features/song_notes/presentation/views/song_notes_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SongNotesView(),
      onGenerateRoute: onGenerateRoutes,
    );
  }
}
