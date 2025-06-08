import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Recebe parâmetro da rota
    final String argumento = ModalRoute.of(context)?.settings.arguments as String? ?? 'Sem parâmetro';

    return Scaffold(
      appBar: AppBar(title: const Text('Detalhes')),
      body: Center(
        child: Text(
          'Parâmetro recebido: $argumento',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
