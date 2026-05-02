import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_request.freezed.dart';
part 'otp_request.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class OtpRequest with _$OtpRequest {
  const OtpRequest._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory OtpRequest({
    // F -- Fields
    required String code,
  }) = _OtpRequest;

  // M -- Map: fromJson
  factory OtpRequest.fromJson(Map<String, dynamic> json) =>
      _$OtpRequestFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
