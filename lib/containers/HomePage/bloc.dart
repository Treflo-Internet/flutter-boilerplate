import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

enum HomeEvent { event1 }

class HomeState {
  final int count;

  const HomeState({
    @required this.count,
  });

  factory HomeState.initial() {
    return HomeState(
      count: 0,
    );
  }

  HomeState copyWith({int count}) {
    return HomeState(
      count: count,
    );
  }
}

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  @override
  HomeState get initialState => HomeState.initial();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    switch (event) {
      case HomeEvent.event1:
        yield state.copyWith(count: 1);
        break;
      default:
        throw Exception('unhandled event: $event');
    }
  }
}
