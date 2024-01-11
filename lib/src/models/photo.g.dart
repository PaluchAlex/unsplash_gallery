// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Photo$Impl _$$Photo$ImplFromJson(Map<String, dynamic> json) => _$Photo$Impl(
      urls: PhotoUrls.fromJson(json['urls'] as Map<String, dynamic>),
      description: json['alt_description'] as String? ?? '',
      likes: json['likes'] as int,
      user: PhotoUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$Photo$ImplToJson(_$Photo$Impl instance) => <String, dynamic>{
      'urls': instance.urls,
      'alt_description': instance.description,
      'likes': instance.likes,
      'user': instance.user,
    };
