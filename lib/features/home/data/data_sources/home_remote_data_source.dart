import 'package:bookly_app_test/constants.dart';
import 'package:bookly_app_test/core/utils/api_service.dart';
import 'package:bookly_app_test/core/utils/functions/save_books_local.dart';
import 'package:bookly_app_test/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');
    List<BookEntity> books = getBooksList(data);

    saveBooksLocal(books, booksFeaturedBoxName);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming&Sorting=newest');
    List<BookEntity> books = getBooksList(data);
    saveBooksLocal(books, booksNewestBoxName);

    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var book in data['items']) {
      books.add(BookModel.fromJson(book));
    }
    return books;
  }
}
