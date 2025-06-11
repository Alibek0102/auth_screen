part of 'details_cubit.dart';

// @freezed
// class DetailsState with _$DetailsState {
//   const factory DetailsState({required String size}) = _DetailsState;
// }

class DetailsState {
  final String size;

  const DetailsState({required this.size});

  DetailsState copyWith({String? size}) {
    return DetailsState(size: size ?? this.size);
  }
}
