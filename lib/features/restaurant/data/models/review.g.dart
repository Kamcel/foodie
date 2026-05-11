// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Review _$ReviewFromJson(Map<String, dynamic> json) => _Review(
      id: json['id'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      userAvatar: json['userAvatar'] as String?,
      comment: json['comment'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$ReviewToJson(_Review instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userName': instance.userName,
      'userAvatar': instance.userAvatar,
      'comment': instance.comment,
      'createdAt': instance.createdAt.toIso8601String(),
      'rating': instance.rating,
    };
