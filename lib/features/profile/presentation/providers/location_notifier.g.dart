// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LocationNotifier)
final locationProvider = LocationNotifierProvider._();

final class LocationNotifierProvider
    extends $NotifierProvider<LocationNotifier, LocationState> {
  LocationNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'locationProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$locationNotifierHash();

  @$internal
  @override
  LocationNotifier create() => LocationNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocationState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocationState>(value),
    );
  }
}

String _$locationNotifierHash() => r'21566cdc16d104254b497f405b60b04574c31661';

abstract class _$LocationNotifier extends $Notifier<LocationState> {
  LocationState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<LocationState, LocationState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<LocationState, LocationState>,
        LocationState,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
