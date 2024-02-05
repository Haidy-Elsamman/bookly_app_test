part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksFailure extends FeaturedBooksState {
  String errorMessage;
  FeaturedBooksFailure({required this.errorMessage});
}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  List<BookEntity> books;
  FeaturedBooksSuccess({required this.books});
}
