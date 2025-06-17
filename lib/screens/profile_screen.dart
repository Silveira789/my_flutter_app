import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  // Dados estáticos de exemplo
  final String userName = 'João Silva';
  final String email = 'joao.silva@email.com';
  final String phone = '+55 11 91234-5678';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do Usuário'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/avatar_placeholder.png'), // Pode trocar a imagem
                backgroundColor: Colors.grey[300],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Nome:',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(userName, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 15),
            Text(
              'Email:',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(email, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 15),
            Text(
              'Telefone:',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(phone, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
