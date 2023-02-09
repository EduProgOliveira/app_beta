import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicos_online/app/core/helpers/size_extensions.dart';
import 'package:musicos_online/app/core/ui/base_state/base_state.dart';
import 'package:musicos_online/app/features/home/home_router.dart';
import 'package:musicos_online/app/features/splash/splash_controller.dart';
import 'package:musicos_online/app/features/splash/splash_state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends BaseState<SplashPage, SplashController> {
  @override
  void onReady() {
    controller.loadConfig();
    super.onReady();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashController, SplashState>(
        listener: (context, state) {
      state.status.matchAny(
        any: () => showLoader(),
        loading: () => showLoader(),
        error: () {
          hideLoader();
          showError(state.errorMessage ?? 'Erro não conhecido');
        },
        loaded: () {
          hideLoader();
          Navigator.pushReplacementNamed(context, HomeRouter.router);
        },
      );
    }, builder: (context, state) {
      return Scaffold(
        body: SafeArea(
          child: Center(
            child: SizedBox(
              width: context.percentWith(.35),
              height: context.percentWith(.35),
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
        ),
      );
    });
  }
}
