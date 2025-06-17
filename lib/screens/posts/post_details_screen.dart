import 'package:flutter/material.dart';
import '../../models/post.dart';
import '../../services/comment_store.dart';

class PostDetailScreen extends StatelessWidget {
  final Post post;

  const PostDetailScreen({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final comments = CommentStore().getComments(post.id);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(post.body),
            const SizedBox(height: 16),
            const Divider(),
            const Text('Comentários:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            if (comments.isEmpty)
              const Text('Nenhum comentário ainda.')
            else
              Expanded(
                child: ListView.builder(
                  itemCount: comments.length,
                  itemBuilder: (_, index) {
                    return ListTile(
                      leading: const Icon(Icons.comment),
                      title: Text(comments[index]),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
