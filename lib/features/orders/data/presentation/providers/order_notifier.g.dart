// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrderNotifier)
final orderProvider = OrderNotifierProvider._();

final class OrderNotifierProvider
    extends $NotifierProvider<OrderNotifier, OrderState> {
  OrderNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'orderProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$orderNotifierHash();

  @$internal
  @override
  OrderNotifier create() => OrderNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderState>(value),
    );
  }
}

String _$orderNotifierHash() => r'17b8b30096ccc052e7607e36ebbc9dda92f0ac7a';

abstract class _$OrderNotifier extends $Notifier<OrderState> {
  OrderState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<OrderState, OrderState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<OrderState, OrderState>, OrderState, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}
