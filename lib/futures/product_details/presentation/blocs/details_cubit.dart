import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_state.dart';
part 'details_cubit.freezed.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(const DetailsState(size: "M"));

  void onChangeSize() {
    emit(state.copyWith(size: 'L'));
  }
}
