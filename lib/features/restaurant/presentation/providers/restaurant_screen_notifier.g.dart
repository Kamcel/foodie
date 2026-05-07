// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_screen_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RestaurantScreenNotifier)
final restaurantScreenProvider = RestaurantScreenNotifierProvider._();

final class RestaurantScreenNotifierProvider
    extends $NotifierProvider<RestaurantScreenNotifier, RestaurantScreenState> {
  RestaurantScreenNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'restaurantScreenProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$restaurantScreenNotifierHash();

  @$internal
  @override
  RestaurantScreenNotifier create() => RestaurantScreenNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RestaurantScreenState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RestaurantScreenState>(value),
    );
  }
}

String _$restaurantScreenNotifierHash() =>
    r'2b5060e7e38d9fc9f093e02321407d972b3e25dc';

abstract class _$RestaurantScreenNotifier
    extends $Notifier<RestaurantScreenState> {
  RestaurantScreenState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<RestaurantScreenState, RestaurantScreenState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<RestaurantScreenState, RestaurantScreenState>,
        RestaurantScreenState,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
