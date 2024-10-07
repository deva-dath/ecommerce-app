import 'package:dartz/dartz.dart';

import 'package:ecommerce_application/core/usecase/usecase.dart';
import 'package:ecommerce_application/data/auth/models/user_signin_req.dart';
import 'package:ecommerce_application/domain/auth/repository/auth.dart';
import 'package:ecommerce_application/service_locator.dart';

class SigninUseCase implements UseCase<Either, UserSigninReq> {
  @override
  Future<Either> call({UserSigninReq? params}) async {
    return sl<AuthRepository>().signin(params!);
  }
}
