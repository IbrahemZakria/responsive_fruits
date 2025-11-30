// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductEntityAdapter extends TypeAdapter<ProductEntity> {
  @override
  final int typeId = 0;

  @override
  ProductEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductEntity(
      isFavorite: fields[13] as bool?,
      discountText: fields[12] as String?,
      productUnit: fields[1] as String?,
      amount: fields[0] as int?,
      sellsCount: fields[11] as num?,
      numberOfCalories: fields[8] as int?,
      numberOfMonthExpiration: fields[7] as int?,
      raitingCount: fields[9] as num?,
      averageCount: fields[10] as num?,
      name: fields[2] as String,
      price: fields[3] as double,
      imageUrl: fields[4] as String?,
      description: fields[5] as String,
      productCode: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductEntity obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.amount)
      ..writeByte(1)
      ..write(obj.productUnit)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.imageUrl)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.productCode)
      ..writeByte(7)
      ..write(obj.numberOfMonthExpiration)
      ..writeByte(8)
      ..write(obj.numberOfCalories)
      ..writeByte(9)
      ..write(obj.raitingCount)
      ..writeByte(10)
      ..write(obj.averageCount)
      ..writeByte(11)
      ..write(obj.sellsCount)
      ..writeByte(12)
      ..write(obj.discountText)
      ..writeByte(13)
      ..write(obj.isFavorite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
