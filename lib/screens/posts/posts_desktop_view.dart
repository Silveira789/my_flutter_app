import 'package:flutter/material.dart';
import '../../../models/post.dart';

class PostsDesktopView extends StatelessWidget {
  final List<Post> posts;

  const PostsDesktopView({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1000),
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index];
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 2,
                child: ListTile(
                  title: Text(post.title, style: const TextStyle(fontSize: 20)),
                  subtitle: Text(post.body),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

