// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$Impl _$$AppState$ImplFromJson(Map<String, dynamic> json) => _$AppState$Impl(
      user: json['user'] == null ? null : AppUser.fromJson(json['user'] as Map<String, dynamic>),
      selectedPhoto:
          json['selectedPhoto'] == null ? null : Photo.fromJson(json['selectedPhoto'] as Map<String, dynamic>),
      query: json['query'] as String? ?? '',
      page: json['page'] as int? ?? 1,
      photos: (json['photos'] as List<dynamic>?)?.map((e) => Photo.fromJson(e as Map<String, dynamic>)).toList() ??
          const <Photo>[],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) => <String, dynamic>{
      'user': instance.user,
      'selectedPhoto': instance.selectedPhoto,
      'query': instance.query,
      'page': instance.page,
      'photos': instance.photos,
      'isLoading': instance.isLoading,
    };
