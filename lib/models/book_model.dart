class  Book {
  final int bookId;
  final String title;
  final String author;
  final String type;
  final int totalCopies;
  final int availableCopies;
  final String libraryName;
  final List<dynamic> genres;

 Book({
    required this.bookId,
    required this.title,
    required this.author,
    required this.type,
    required this.totalCopies,
    required this.availableCopies,
    required this.libraryName,
    required this.genres,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
    bookId: json["book_id"],
    title: json["title"],
    author: json["author"],
    type: json["type"],
    totalCopies: json["total_copies"],
    availableCopies: json["available_copies"],
    libraryName: json["library_name"],
    genres: List<dynamic>.from(json["genres"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "book_id": bookId,
    "title": title,
    "author": author,
    "type": type,
    "total_copies": totalCopies,
    "available_copies": availableCopies,
    "library_name": libraryName,
    "genres": List<dynamic>.from(genres.map((x) => x)),
  };
}
