import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(const DetailsState(size: "M"));

  void onChangeSize() {
    log(state.size);
    emit(DetailsState(size: "L"));
  }
}
