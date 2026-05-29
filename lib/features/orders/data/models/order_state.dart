import 'package:foodie/features/orders/data/models/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_state.freezed.dart';

// LSEE -- Loading, Success, Empty, Error
@freezed
abstract class OrderState with _$OrderState {
  const factory OrderState.loading() = Loading;
  const factory OrderState.success({required List<Order> orders}) = Success;
  const factory OrderState.empty() = Empty;
  const factory OrderState.error({required String message}) = Error;
}
