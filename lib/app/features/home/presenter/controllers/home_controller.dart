import 'package:bloc/bloc.dart';
import 'package:musicos_online/app/features/home/presenter/controllers/home_state.dart';

class HomeController extends Cubit<HomeState> {
  HomeController() : super(const HomeState.initial());
}
