// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$Impl _$$AppState$ImplFromJson(Map<String, dynamic> json) => _$AppState$Impl(
      page: json['page'] as int? ?? 1,
      photos:
          (json['photos'] as List<dynamic>?)?.map((dynamic e) => Photo.fromJson(e as Map<String, dynamic>)).toList() ??
              const <Photo>[],
      isLoading: json['isLoading'] as bool? ?? true,
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) => <String, dynamic>{
      'page': instance.page,
      'photos': instance.photos,
      'isLoading': instance.isLoading,
    };
