class BookSearchResult {
  String title;
  String author;
  String thumbnailPath;
  BookSearchResult({required this.title, required this.author, required this.thumbnailPath});

  factory BookSearchResult.fromJson(Map<String, dynamic> json) => BookSearchResult(
        title: json['title'],
        author: json['author'],
        thumbnailPath: json['image'],
      );
}
