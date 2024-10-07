import 'package:dartz/dartz.dart';

import 'package:ecommerce_application/core/usecase/usecase.dart';
import 'package:ecommerce_application/domain/product/entities/product.dart';
import 'package:ecommerce_application/domain/product/repository/product.dart';
import 'package:ecommerce_application/service_locator.dart';

class AddOrRemoveFavoriteProductUseCase
    implements UseCase<Either, ProductEntity> {
  @override
  Future<Either> call({ProductEntity? params}) async {
    return await sl<ProductRepository>().addOrRemoveFavoriteProduct(params!);
  }
}
