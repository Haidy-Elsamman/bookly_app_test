import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveBooksLocal(List<BookEntity> books, String boxName) {
    var box = Hive.box(boxName);
    box.add(books);
  }