import 'package:foodie/features/auth/data/models/auth_provider.dart';
import 'package:foodie/features/auth/data/models/auth_response/address.dart';
import 'package:foodie/features/auth/data/models/auth_response/user.dart';
import 'package:hive_ce/hive.dart';

part 'hive_registrar.g.dart';

@GenerateAdapters([
  AdapterSpec<User>(),
  AdapterSpec<Address>(),
  AdapterSpec<SubScriptionType>(),
  AdapterSpec<AuthProvider>(),
])
class HiveRegistrar {
  static void registerAdapters() {
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(AddressAdapter());
    Hive.registerAdapter(SubScriptionTypeAdapter());
    Hive.registerAdapter(AuthProviderAdapter());
  }
}
