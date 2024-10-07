import 'package:dartz/dartz.dart';

import 'package:ecommerce_application/core/usecase/usecase.dart';
import 'package:ecommerce_application/data/order/models/add_to_cart_req.dart';
import 'package:ecommerce_application/domain/order/repository/order.dart';
import 'package:ecommerce_application/service_locator.dart';

class AddToCartUseCase implements UseCase<Either, AddToCartReq> {
  @override
  Future<Either> call({AddToCartReq? params}) async {
    return sl<OrderRepository>().addToCart(params!);
  }
}
