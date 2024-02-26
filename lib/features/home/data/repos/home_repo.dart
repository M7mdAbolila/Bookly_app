import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
Future<Either<Failure,List<BookModel>>>  fetechBestSellerBooks();
Future<Either<Failure,List<BookModel>>> fetechFeaturedBooks();

}
