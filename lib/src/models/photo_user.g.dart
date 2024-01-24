// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoUser$Impl _$$PhotoUser$ImplFromJson(Map<String, dynamic> json) =>
    _$PhotoUser$Impl(
      links: UserLinks.fromJson(json['links'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$PhotoUser$ImplToJson(_$PhotoUser$Impl instance) =>
    <String, dynamic>{
      'links': instance.links,
      'name': instance.name,
    };
