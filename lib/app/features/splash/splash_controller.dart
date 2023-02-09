import 'package:bloc/bloc.dart';
import 'package:musicos_online/app/features/splash/splash_state.dart';

class SplashController extends Cubit<SplashState> {
  SplashController() : super(const SplashState.initial());

  Future<void> loadConfig() async {
    emit(state.copyWith(status: SplashStatus.loading));
    await Future.delayed(const Duration(seconds: 4));
    emit(state.copyWith(status: SplashStatus.loaded));
  }
}
