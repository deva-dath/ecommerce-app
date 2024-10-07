import 'package:dartz/dartz.dart';

import 'package:ecommerce_application/core/usecase/usecase.dart';
import 'package:ecommerce_application/data/auth/models/user_creation_req.dart';
import 'package:ecommerce_application/domain/auth/repository/auth.dart';
import 'package:ecommerce_application/service_locator.dart';

class SignupUseCase implements UseCase<Either, UserCreationReq> {
  @override
  Future<Either> call({UserCreationReq? params}) async {
    return await sl<AuthRepository>().signup(params!);
  }
}
