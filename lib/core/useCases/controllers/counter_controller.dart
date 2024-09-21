// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/core/presentation/cubit/counter/cubit_state.dart';

class CounterController extends Cubit<CubitState> {
  CounterController() : super(InitialState());
}
