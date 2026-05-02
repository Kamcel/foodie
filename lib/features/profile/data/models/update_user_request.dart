import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_request.freezed.dart';
part 'update_user_request.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class UpdateUserRequest with _$UpdateUserRequest {
  const UpdateUserRequest._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory UpdateUserRequest({
    // F -- Fields
    required String name,
    required String userName,
    required String avatarPath,
  }) = _UpdateUserRequest;

  // M -- Map: fromJson
  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
