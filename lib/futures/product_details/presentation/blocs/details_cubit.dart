import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_state.dart';
part 'details_cubit.freezed.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(const DetailsState());

  void onChangeSize({required String size}) {
    emit(state.copyWith(size: size));
  }

  void onChangeColor({required String color}) {
    emit(state.copyWith(color: color));
  }
}
