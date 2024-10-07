import 'package:ecommerce_application/core/usecase/usecase.dart';
import 'package:ecommerce_application/domain/auth/repository/auth.dart';
import 'package:ecommerce_application/service_locator.dart';

class IsLoggedInUseCase implements UseCase<bool, dynamic> {
  @override
  Future<bool> call({params}) async {
    return await sl<AuthRepository>().isLoggedIn();
  }
}
