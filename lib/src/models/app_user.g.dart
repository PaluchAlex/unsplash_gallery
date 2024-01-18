// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUser$Impl _$$AppUser$ImplFromJson(Map<String, dynamic> json) => _$AppUser$Impl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      pictureUrl: json['pictureUrl'] as String?,
    );

Map<String, dynamic> _$$AppUser$ImplToJson(_$AppUser$Impl instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'pictureUrl': instance.pictureUrl,
    };
