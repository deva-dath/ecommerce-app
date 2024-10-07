import 'package:dartz/dartz.dart';

import 'package:ecommerce_application/core/usecase/usecase.dart';
import 'package:ecommerce_application/domain/auth/repository/auth.dart';
import 'package:ecommerce_application/service_locator.dart';

class GetAgesUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await sl<AuthRepository>().getAges();
  }
}
