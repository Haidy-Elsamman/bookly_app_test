import 'package:bookly_app_test/constants.dart';
import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var boxFeaturedBooks = Hive.box<BookEntity>(booksFeaturedBoxName);
    return boxFeaturedBooks.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var boxNewestBooks = Hive.box<BookEntity>(booksNewestBoxName);
    return boxNewestBooks.values.toList();
  }
}
