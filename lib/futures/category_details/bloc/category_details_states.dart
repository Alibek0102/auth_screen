part of 'category_details_bloc.dart';

// class CategoryDetailsState {}

// class CategoryDetailsInitialState extends CategoryDetailsState {}
@freezed
class CategoryDetailsState with _$CategoryDetailsState {
  const factory CategoryDetailsState.initial() = _CategoryDetailsInitialState;
  const factory CategoryDetailsState.loader() = _CategoryDetailsLoader;
  const factory CategoryDetailsState.loaded(
      {required List<ProductEntity> products}) = _CategoryDetailsLoaded;
  const factory CategoryDetailsState.error() = _CategoryDetailsError;
}
