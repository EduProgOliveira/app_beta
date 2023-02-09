// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

part 'home_state.g.dart';

@match
enum HomeStatus { initial, loading, loaded, error }

class HomeState extends Equatable {
  final HomeStatus status;
  final String? errorMessage;

  const HomeState({
    required this.status,
    required this.errorMessage,
  });

  const HomeState.initial()
      : status = HomeStatus.initial,
        errorMessage = null;

  @override
  List<Object?> get props => [status, errorMessage];

  HomeState copyWith({
    HomeStatus? status,
    String? errorMessage,
  }) {
    return HomeState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
