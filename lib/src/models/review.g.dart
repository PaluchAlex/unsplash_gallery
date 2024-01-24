// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Review$Impl _$$Review$ImplFromJson(Map<String, dynamic> json) => _$Review$Impl(
      id: json['id'] as String,
      text: json['text'] as String,
      uid: json['uid'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$Review$ImplToJson(_$Review$Impl instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'uid': instance.uid,
      'createdAt': instance.createdAt.toIso8601String(),
    };
