part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBooksFailure(this.errMessage);
}

class FeaturedBooksLoading extends FeaturedBooksState {
  
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

 const FeaturedBooksSuccess(this.books);
}
