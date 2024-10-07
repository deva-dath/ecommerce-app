import 'package:dartz/dartz.dart';

import 'package:ecommerce_application/core/usecase/usecase.dart';
import 'package:ecommerce_application/domain/order/repository/order.dart';
import 'package:ecommerce_application/service_locator.dart';

class RemoveCartProductUseCase implements UseCase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return sl<OrderRepository>().removeCartProduct(params!);
  }
}
