import 'package:flutter/material.dart';

class CommentsScreen extends StatefulWidget {
  final int postId;

  const CommentsScreen({Key? key, required this.postId}) : super(key: key);

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  final List<String> _comments = [];
  final TextEditingController _controller = TextEditingController();

  void _addComment() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _comments.add(text);
    });
    _controller.clear();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comentários do post ${widget.postId}'),
      ),
      body: Column(
        children: [
          Expanded(
            child: _comments.isEmpty
                ? const Center(child: Text('Nenhum comentário ainda.'))
                : ListView.builder(
              itemCount: _comments.length,
              itemBuilder: (_, index) {
                return ListTile(
                  leading: const Icon(Icons.person_outline),
                  title: Text(_comments[index]),
                );
              },
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Digite um comentário...',
                      border: InputBorder.none,
                    ),
                    onSubmitted: (_) => _addComment(),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _addComment,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
