import 'package:flutter/material.dart';
import '../../models/post.dart';

class PostsMobileView extends StatelessWidget {
  final List<Post> posts;

  const PostsMobileView({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: ListTile(
              title: Text(post.title),
              subtitle: Text(post.body),
            ),
          ),
        );
      },
    );
  }
}
