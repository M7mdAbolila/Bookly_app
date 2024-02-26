import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetechBestSellerBooks() {
    // TODO: implement fetechBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetechFeaturedBooks() {
    // TODO: implement fetechFeaturedBooks
    throw UnimplementedError();
  }

}