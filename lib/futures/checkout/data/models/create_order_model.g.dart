// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreateOrderModelAdapter extends TypeAdapter<CreateOrderModel> {
  @override
  final int typeId = 3;

  @override
  CreateOrderModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CreateOrderModel(
      cardNumber: fields[1] as String,
      products: (fields[2] as List).cast<CartProductModel>(),
      shippingAddress: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CreateOrderModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.shippingAddress)
      ..writeByte(1)
      ..write(obj.cardNumber)
      ..writeByte(2)
      ..write(obj.products);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateOrderModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
