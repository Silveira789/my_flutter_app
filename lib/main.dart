import 'package:flutter/material.dart';
import 'routes/app_routes.dart'; // Iremos criar já já

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto Avaliação Final',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: AppRoutes.routes,
    );
  }
}
