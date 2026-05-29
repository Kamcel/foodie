import 'package:foodie/features/auth/data/models/auth_provider.dart';
import 'package:foodie/features/auth/data/models/auth_response/address.dart';
import 'package:foodie/features/auth/data/models/auth_response/user.dart';
import 'package:foodie/features/cart/data/model/cart.dart';
import 'package:foodie/features/cart/data/model/cart_item.dart';
import 'package:foodie/features/orders/data/models/order_item.dart';
import 'package:foodie/features/orders/data/models/order.dart';
import 'package:foodie/features/orders/data/models/order_status.dart';
import 'package:foodie/features/profile/data/models/payment_method_model.dart';
import 'package:foodie/features/profile/data/models/promo_offer_model.dart';
import 'package:foodie/features/settings/data/models/app_preferences_settings.dart';
import 'package:foodie/features/settings/data/models/notification_settings.dart';
import 'package:foodie/features/settings/data/models/settings.dart';
import 'package:foodie/features/tracking/data/models/tracking.dart';
import 'package:foodie/features/tracking/data/models/tracking_progress_enum.dart';
import 'package:hive_ce/hive.dart';

part 'hive_registrar.g.dart';

@GenerateAdapters([
  // Auth (existing)
  AdapterSpec<User>(),
  AdapterSpec<Address>(),
  AdapterSpec<SubScriptionType>(),
  AdapterSpec<AuthProvider>(),
  // Cart
  AdapterSpec<CartItem>(),
  AdapterSpec<Cart>(),
  // Orders
  AdapterSpec<OrderStatus>(),
  AdapterSpec<OrderItem>(),
  AdapterSpec<Order>(),
  // Tracking
  AdapterSpec<Tracking>(),
  AdapterSpec<TrackingProgress>(),
  // Profile
  AdapterSpec<PaymentMethodModel>(),
  AdapterSpec<PromoOfferModel>(),
  // Settings
  AdapterSpec<NotificationSettings>(),
  AdapterSpec<AppPreferencesSettings>(),
  AdapterSpec<Settings>(),
])
class HiveRegistrar {
  static void registerAdapters() {
    // Auth
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(AddressAdapter());
    Hive.registerAdapter(SubScriptionTypeAdapter());
    Hive.registerAdapter(AuthProviderAdapter());
    // Cart
    Hive.registerAdapter(CartItemAdapter());
    Hive.registerAdapter(CartAdapter());
    // Orders
    Hive.registerAdapter(OrderStatusAdapter());
    Hive.registerAdapter(OrderItemAdapter());
    Hive.registerAdapter(OrderAdapter());
    // Tracking
    Hive.registerAdapter(TrackingAdapter());
    Hive.registerAdapter(TrackingProgressAdapter());
    // Profile
    Hive.registerAdapter(PaymentMethodModelAdapter());
    Hive.registerAdapter(PromoOfferModelAdapter());
    // Settings
    Hive.registerAdapter(NotificationSettingsAdapter());
    Hive.registerAdapter(AppPreferencesSettingsAdapter());
    Hive.registerAdapter(SettingsAdapter());
  }
}
