class BookEntity {
  final String? bookId;
  final String? bookImage;
  final String? bookName;
  final String? authorName;
  final num? bookPrice;
  final num? bookRating;

  BookEntity( 
      {required this.bookId,
        required this.bookImage,
      required this.bookName,
      required this.authorName,
      required this.bookPrice,
      required this.bookRating});
}
