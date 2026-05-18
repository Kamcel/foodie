// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DishNotifier)
final dishProvider = DishNotifierProvider._();

final class DishNotifierProvider
    extends $NotifierProvider<DishNotifier, DishListState> {
  DishNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'dishProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$dishNotifierHash();

  @$internal
  @override
  DishNotifier create() => DishNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DishListState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DishListState>(value),
    );
  }
}

String _$dishNotifierHash() => r'0c48267142a2abdec7fc15866923a2f9e67c7183';

abstract class _$DishNotifier extends $Notifier<DishListState> {
  DishListState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<DishListState, DishListState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<DishListState, DishListState>,
        DishListState,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
