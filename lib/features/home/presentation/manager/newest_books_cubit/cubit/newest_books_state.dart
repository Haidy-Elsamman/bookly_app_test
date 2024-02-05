part of 'newest_books_cubit.dart';

abstract class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksFailure extends NewestBooksState {
  String errorMessage;
  NewestBooksFailure({required this.errorMessage});
}

final class NewestBooksSuccess extends NewestBooksState {
  List<BookEntity> newestBooks;
  NewestBooksSuccess({required this.newestBooks});
}
