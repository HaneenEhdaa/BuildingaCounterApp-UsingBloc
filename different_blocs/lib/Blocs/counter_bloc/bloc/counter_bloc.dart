import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(num: 0)) {
    on<CountIncrement>((event, emit) {
      emit(CounterState(num: state.num + 1));
    });
    on<CountDecrement>((event, emit) {
      emit(CounterState(num: state.num - 1));
    });
  }
}
