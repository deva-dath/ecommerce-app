import 'package:dartz/dartz.dart';
import 'package:ecommerce_application/core/usecase/usecase.dart';

import 'package:ecommerce_application/domain/product/repository/product.dart';
import 'package:ecommerce_application/service_locator.dart';

class GetNewInUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await sl<ProductRepository>().getNewIn();
  }
}
