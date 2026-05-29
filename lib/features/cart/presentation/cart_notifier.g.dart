// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CartNotifier)
final cartProvider = CartNotifierProvider._();

final class CartNotifierProvider extends $NotifierProvider<CartNotifier, Cart> {
  CartNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'cartProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$cartNotifierHash();

  @$internal
  @override
  CartNotifier create() => CartNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Cart value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Cart>(value),
    );
  }
}

String _$cartNotifierHash() => r'2028f0aa4fca3358c2662418e7241b2781b102ba';

abstract class _$CartNotifier extends $Notifier<Cart> {
  Cart build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Cart, Cart>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<Cart, Cart>, Cart, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}
