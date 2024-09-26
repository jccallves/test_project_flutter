// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/core/domain/entities/counter_domain.dart';

class CounterCubit extends Cubit<Counter> {
  CounterCubit() : super(const Counter(counter: 0));

  void increment() {
    emit(Counter(counter: state.counter + 1));
  }

  void decrement() {
    emit(Counter(counter: state.counter - 1));
  }
}
