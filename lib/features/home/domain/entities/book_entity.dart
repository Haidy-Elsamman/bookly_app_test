import 'package:hive/hive.dart';

part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String? bookId;

  @HiveField(1)
  final String? bookImage;

  @HiveField(2)
  final String? bookName;

  @HiveField(3)
  final String? authorName;

  @HiveField(4)
  final num? bookPrice;

  @HiveField(5)
  final num? bookRating;

  BookEntity(
      {required this.bookId,
      required this.bookImage,
      required this.bookName,
      required this.authorName,
      required this.bookPrice,
      required this.bookRating});
}
