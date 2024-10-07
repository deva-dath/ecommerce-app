import 'package:ecommerce_application/core/usecase/usecase.dart';
import 'package:ecommerce_application/domain/product/repository/product.dart';
import 'package:ecommerce_application/service_locator.dart';

class IsFavoriteUseCase implements UseCase<bool, String> {
  @override
  Future<bool> call({String? params}) async {
    return await sl<ProductRepository>().isFavorite(params!);
  }
}
