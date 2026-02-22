import 'package:flutter/material.dart';
import 'package:musinote/core/utils/on_generate_routes.dart';
import 'package:musinote/features/authentication/presentation/ui_screen/start_screen.dart';

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
      initialRoute: StartScreen.routeName,
      onGenerateRoute: onGenerateRoutes,
    );
  }
}