import 'package:flutter/material.dart';
import '../screens/comments_screen.dart';

class CommentIconButton extends StatelessWidget {
  final int postId;
  final int initialCount;

  const CommentIconButton({
    Key? key,
    required this.postId,
    this.initialCount = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navegar para a tela de comentários
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => CommentsScreen(postId: postId),
          ),
        );
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.comment_outlined, color: Colors.blueGrey),
          const SizedBox(width: 4),
          Text(
            '$initialCount',
            style: const TextStyle(color: Colors.blueGrey),
          ),
        ],
      ),
    );
  }
}
