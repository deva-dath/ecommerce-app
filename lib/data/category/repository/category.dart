import 'package:dartz/dartz.dart';

import 'package:ecommerce_application/data/category/models/category.dart';
import 'package:ecommerce_application/data/category/source/category_firebase_service.dart';
import 'package:ecommerce_application/domain/category/repository/category.dart';
import 'package:ecommerce_application/service_locator.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  @override
  Future<Either> getCategories() async {
    var categories = await sl<CategoryFirebaseService>().getCategories();
    return categories.fold((error) {
      return Left(error);
    }, (data) {
      return Right(List.from(data)
          .map((e) => CategoryModel.fromMap(e).toEntity())
          .toList());
    });
  }
}
