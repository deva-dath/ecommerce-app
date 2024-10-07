import 'package:ecommerce_application/common/bloc/categories/categories_state.dart';
import 'package:ecommerce_application/domain/category/usecases/get_categories.dart';
import 'package:ecommerce_application/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesDisplayCubit extends Cubit<CategoriesDisplayState> {
  CategoriesDisplayCubit() : super(CategoriesLoading());

  void displayCategories() async {
    var returnedData = await sl<GetCategoriesUseCase>().call();
    returnedData.fold((error) {
      emit(LoadCategoriesFailure());
    }, (data) {
      emit(CategoriesLoaded(categories: data));
    });
  }
}
