// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$Impl _$$AppState$ImplFromJson(Map<String, dynamic> json) => _$AppState$Impl(
      items:
          (json['items'] as List<dynamic>?)?.map((dynamic e) => Photo.fromJson(e as Map<String, dynamic>)).toList() ??
              const <Photo>[],
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) => <String, dynamic>{
      'items': instance.items,
    };
