// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_registrar.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[0] as String,
      name: fields[1] as String,
      email: fields[3] == null ? '' : fields[3] as String,
      phone: fields[4] as String?,
      avatar: fields[5] as String?,
      address: fields[6] as Address?,
      socialProvider: fields[7] as AuthProvider?,
      isActive: fields[8] as bool,
      createdAt: fields[9] as DateTime,
      updatedAt: fields[10] as DateTime?,
      subScriptionType: fields[11] == null
          ? SubScriptionType.basic
          : fields[11] as SubScriptionType,
      userName: fields[2] == null ? '' : fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.userName)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.phone)
      ..writeByte(5)
      ..write(obj.avatar)
      ..writeByte(6)
      ..write(obj.address)
      ..writeByte(7)
      ..write(obj.socialProvider)
      ..writeByte(8)
      ..write(obj.isActive)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.updatedAt)
      ..writeByte(11)
      ..write(obj.subScriptionType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AddressAdapter extends TypeAdapter<Address> {
  @override
  final typeId = 1;

  @override
  Address read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Address(
      id: fields[0] as String,
      city: fields[1] as String,
      state: fields[2] as String,
      country: fields[3] as String,
      homeAddress: fields[4] as String,
      createdAt: fields[5] as DateTime,
      updatedAt: fields[6] as DateTime?,
      workAddress: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Address obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.city)
      ..writeByte(2)
      ..write(obj.state)
      ..writeByte(3)
      ..write(obj.country)
      ..writeByte(4)
      ..write(obj.homeAddress)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.updatedAt)
      ..writeByte(7)
      ..write(obj.workAddress);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddressAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SubScriptionTypeAdapter extends TypeAdapter<SubScriptionType> {
  @override
  final typeId = 2;

  @override
  SubScriptionType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SubScriptionType.basic;
      case 1:
        return SubScriptionType.monthly;
      case 2:
        return SubScriptionType.yearly;
      case 3:
        return SubScriptionType.pro;
      case 4:
        return SubScriptionType.lifetime;
      default:
        return SubScriptionType.basic;
    }
  }

  @override
  void write(BinaryWriter writer, SubScriptionType obj) {
    switch (obj) {
      case SubScriptionType.basic:
        writer.writeByte(0);
      case SubScriptionType.monthly:
        writer.writeByte(1);
      case SubScriptionType.yearly:
        writer.writeByte(2);
      case SubScriptionType.pro:
        writer.writeByte(3);
      case SubScriptionType.lifetime:
        writer.writeByte(4);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubScriptionTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AuthProviderAdapter extends TypeAdapter<AuthProvider> {
  @override
  final typeId = 3;

  @override
  AuthProvider read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AuthProvider.google;
      case 1:
        return AuthProvider.apple;
      case 2:
        return AuthProvider.facebook;
      default:
        return AuthProvider.google;
    }
  }

  @override
  void write(BinaryWriter writer, AuthProvider obj) {
    switch (obj) {
      case AuthProvider.google:
        writer.writeByte(0);
      case AuthProvider.apple:
        writer.writeByte(1);
      case AuthProvider.facebook:
        writer.writeByte(2);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthProviderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
