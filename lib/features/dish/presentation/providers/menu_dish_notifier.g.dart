// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_dish_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MenuDishNotifier)
final menuDishProvider = MenuDishNotifierProvider._();

final class MenuDishNotifierProvider
    extends $NotifierProvider<MenuDishNotifier, List<Dish>> {
  MenuDishNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'menuDishProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$menuDishNotifierHash();

  @$internal
  @override
  MenuDishNotifier create() => MenuDishNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Dish> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Dish>>(value),
    );
  }
}

String _$menuDishNotifierHash() => r'7317a9edc13d2bb82ba74a416ea9662952301687';

abstract class _$MenuDishNotifier extends $Notifier<List<Dish>> {
  List<Dish> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<Dish>, List<Dish>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<List<Dish>, List<Dish>>, List<Dish>, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}
