import 'package:ecommerce_application/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce_application/core/configs/assets/app_vectors.dart';
import 'package:ecommerce_application/core/configs/theme/app_colors.dart';
import 'package:ecommerce_application/presentation/auth/pages/siginin.dart';
import 'package:ecommerce_application/presentation/home/pages/home.dart';
import 'package:ecommerce_application/presentation/splash/bloc/splash_cubit.dart';
import 'package:ecommerce_application/presentation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          AppNavigator.pushReplacement(context, SigninPage());
        }
        if (state is Authenticated) {
          AppNavigator.pushReplacement(context, const HomePage());
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: SvgPicture.asset(AppVectors.appLogo),
        ),
      ),
    );
  }
}
