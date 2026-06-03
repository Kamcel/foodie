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

class CartItemAdapter extends TypeAdapter<CartItem> {
  @override
  final typeId = 4;

  @override
  CartItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartItem(
      id: fields[0] as String,
      dishId: fields[1] as String,
      dishName: fields[2] as String,
      description: fields[9] as String,
      imageUrl: fields[3] as String,
      selectedSize: fields[4] as String?,
      selectedToppings:
          fields[5] == null ? [] : (fields[5] as List).cast<String>(),
      basePrice: (fields[6] as num).toDouble(),
      quantity: fields[7] == null ? 1 : (fields[7] as num).toInt(),
      note: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CartItem obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.dishId)
      ..writeByte(2)
      ..write(obj.dishName)
      ..writeByte(3)
      ..write(obj.imageUrl)
      ..writeByte(4)
      ..write(obj.selectedSize)
      ..writeByte(5)
      ..write(obj.selectedToppings)
      ..writeByte(6)
      ..write(obj.basePrice)
      ..writeByte(7)
      ..write(obj.quantity)
      ..writeByte(8)
      ..write(obj.note)
      ..writeByte(9)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OrderStatusAdapter extends TypeAdapter<OrderStatus> {
  @override
  final typeId = 6;

  @override
  OrderStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return OrderStatus.active;
      case 1:
        return OrderStatus.delivered;
      case 2:
        return OrderStatus.cancelled;
      default:
        return OrderStatus.active;
    }
  }

  @override
  void write(BinaryWriter writer, OrderStatus obj) {
    switch (obj) {
      case OrderStatus.active:
        writer.writeByte(0);
      case OrderStatus.delivered:
        writer.writeByte(1);
      case OrderStatus.cancelled:
        writer.writeByte(2);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TrackingProgressAdapter extends TypeAdapter<TrackingProgress> {
  @override
  final typeId = 9;

  @override
  TrackingProgress read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TrackingProgress.orderConfirmed;
      case 1:
        return TrackingProgress.preparingFood;
      case 2:
        return TrackingProgress.onTheWay;
      case 3:
        return TrackingProgress.delivered;
      default:
        return TrackingProgress.orderConfirmed;
    }
  }

  @override
  void write(BinaryWriter writer, TrackingProgress obj) {
    switch (obj) {
      case TrackingProgress.orderConfirmed:
        writer.writeByte(0);
      case TrackingProgress.preparingFood:
        writer.writeByte(1);
      case TrackingProgress.onTheWay:
        writer.writeByte(2);
      case TrackingProgress.delivered:
        writer.writeByte(3);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrackingProgressAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PaymentMethodModelAdapter extends TypeAdapter<PaymentMethodModel> {
  @override
  final typeId = 10;

  @override
  PaymentMethodModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PaymentMethodModel(
      id: fields[0] as String,
      cardBrand: fields[1] as String,
      lastFourDigits: fields[2] as String,
      isDefault: fields[3] == null ? false : fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, PaymentMethodModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.cardBrand)
      ..writeByte(2)
      ..write(obj.lastFourDigits)
      ..writeByte(3)
      ..write(obj.isDefault);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentMethodModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PromoOfferModelAdapter extends TypeAdapter<PromoOfferModel> {
  @override
  final typeId = 11;

  @override
  PromoOfferModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PromoOfferModel(
      promoId: fields[0] as String,
      code: fields[1] as String,
      title: fields[2] as String,
      isActive: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, PromoOfferModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.promoId)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PromoOfferModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NotificationSettingsAdapter extends TypeAdapter<NotificationSettings> {
  @override
  final typeId = 12;

  @override
  NotificationSettings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NotificationSettings(
      orderUpdates: fields[0] == null ? true : fields[0] as bool,
      promotionsAndOffers: fields[1] == null ? true : fields[1] as bool,
      newsletterAlerts: fields[2] == null ? false : fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, NotificationSettings obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.orderUpdates)
      ..writeByte(1)
      ..write(obj.promotionsAndOffers)
      ..writeByte(2)
      ..write(obj.newsletterAlerts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotificationSettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AppPreferencesSettingsAdapter
    extends TypeAdapter<AppPreferencesSettings> {
  @override
  final typeId = 13;

  @override
  AppPreferencesSettings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppPreferencesSettings(
      isDarkMode: fields[0] == null ? false : fields[0] as bool,
      useBiometricAuth: fields[1] == null ? false : fields[1] as bool,
      languageCode: fields[2] == null ? 'en' : fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AppPreferencesSettings obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.isDarkMode)
      ..writeByte(1)
      ..write(obj.useBiometricAuth)
      ..writeByte(2)
      ..write(obj.languageCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppPreferencesSettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CartAdapter extends TypeAdapter<Cart> {
  @override
  final typeId = 15;

  @override
  Cart read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Cart(
      items: fields[0] == null ? [] : (fields[0] as List).cast<CartItem>(),
      promoCode: fields[1] as String?,
      deliveryFee: fields[2] == null ? 0.0 : (fields[2] as num).toDouble(),
      taxFee: fields[3] == null ? 0.0 : (fields[3] as num).toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, Cart obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.items)
      ..writeByte(1)
      ..write(obj.promoCode)
      ..writeByte(2)
      ..write(obj.deliveryFee)
      ..writeByte(3)
      ..write(obj.taxFee);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OrderItemAdapter extends TypeAdapter<OrderItem> {
  @override
  final typeId = 16;

  @override
  OrderItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OrderItem(
      dishId: fields[0] as String,
      dishName: fields[1] as String,
      quantity: (fields[2] as num).toInt(),
      selectedSize: fields[3] as String,
      selectedToppings:
          fields[4] == null ? [] : (fields[4] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, OrderItem obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.dishId)
      ..writeByte(1)
      ..write(obj.dishName)
      ..writeByte(2)
      ..write(obj.quantity)
      ..writeByte(3)
      ..write(obj.selectedSize)
      ..writeByte(4)
      ..write(obj.selectedToppings);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OrderAdapter extends TypeAdapter<Order> {
  @override
  final typeId = 17;

  @override
  Order read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Order(
      id: fields[9] as String,
      items: (fields[3] as List).cast<CartItem>(),
      status: fields[5] as OrderStatus,
      createdAt: fields[10] as DateTime,
      totalAmount: (fields[11] as num).toDouble(),
      deliveryAddress: fields[12] as String?,
      rating: (fields[13] as num?)?.toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, Order obj) {
    writer
      ..writeByte(7)
      ..writeByte(3)
      ..write(obj.items)
      ..writeByte(5)
      ..write(obj.status)
      ..writeByte(9)
      ..write(obj.id)
      ..writeByte(10)
      ..write(obj.createdAt)
      ..writeByte(11)
      ..write(obj.totalAmount)
      ..writeByte(12)
      ..write(obj.deliveryAddress)
      ..writeByte(13)
      ..write(obj.rating);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TrackingAdapter extends TypeAdapter<Tracking> {
  @override
  final typeId = 18;

  @override
  Tracking read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Tracking(
      orderId: fields[0] as String,
      currentProgress: fields[1] as TrackingProgress,
      driverName: fields[2] as String,
      driverPhone: fields[3] as String,
      globalEtaMinutes: (fields[4] as num).toInt(),
      confirmedAt: fields[5] as DateTime,
      preparingAt: fields[6] as DateTime?,
      pickedUpAt: fields[7] as DateTime?,
      deliveredAt: fields[8] as DateTime?,
      driverLatitude: (fields[9] as num?)?.toDouble(),
      driverLongitude: (fields[10] as num?)?.toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, Tracking obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.orderId)
      ..writeByte(1)
      ..write(obj.currentProgress)
      ..writeByte(2)
      ..write(obj.driverName)
      ..writeByte(3)
      ..write(obj.driverPhone)
      ..writeByte(4)
      ..write(obj.globalEtaMinutes)
      ..writeByte(5)
      ..write(obj.confirmedAt)
      ..writeByte(6)
      ..write(obj.preparingAt)
      ..writeByte(7)
      ..write(obj.pickedUpAt)
      ..writeByte(8)
      ..write(obj.deliveredAt)
      ..writeByte(9)
      ..write(obj.driverLatitude)
      ..writeByte(10)
      ..write(obj.driverLongitude);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrackingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SettingsAdapter extends TypeAdapter<Settings> {
  @override
  final typeId = 19;

  @override
  Settings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Settings(
      notifications: fields[0] as NotificationSettings,
      preferences: fields[1] as AppPreferencesSettings,
      appVersion: fields[2] == null ? '1.0.0' : fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Settings obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.notifications)
      ..writeByte(1)
      ..write(obj.preferences)
      ..writeByte(2)
      ..write(obj.appVersion);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
