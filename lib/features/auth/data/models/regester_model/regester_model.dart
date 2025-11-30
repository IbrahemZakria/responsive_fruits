import 'data.dart';

class RegesterModel {
  bool? status;
  String? errorMessage;
  String? errorMessageEn;
  Data? data;

  RegesterModel({
    this.status,
    this.errorMessage,
    this.errorMessageEn,
    this.data,
  });

  factory RegesterModel.fromJson(Map<String, dynamic> json) => RegesterModel(
    status: json['status'] as bool?,
    errorMessage: json['error_message'] as String?,
    errorMessageEn: json['error_message_en'] as String?,
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    'error_message': errorMessage,
    'error_message_en': errorMessageEn,
    'data': data?.toJson(),
  };
}
