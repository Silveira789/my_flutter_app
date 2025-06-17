class CommentStore {
  static final CommentStore _instance = CommentStore._internal();

  // Armazena comentários por postId
  final Map<int, List<String>> _commentsByPost = {};

  factory CommentStore() {
    return _instance;
  }

  CommentStore._internal();

  List<String> getComments(int postId) {
    return _commentsByPost[postId] ?? [];
  }

  void addComment(int postId, String comment) {
    _commentsByPost.putIfAbsent(postId, () => []);
    _commentsByPost[postId]!.add(comment);
  }
}
