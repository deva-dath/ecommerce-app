import 'package:dartz/dartz.dart';

import 'package:ecommerce_application/core/usecase/usecase.dart';
import 'package:ecommerce_application/domain/category/repository/category.dart';
import 'package:ecommerce_application/service_locator.dart';

class GetCategoriesUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await sl<CategoryRepository>().getCategories();
  }
}
