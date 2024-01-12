import 'package:freezed_annotation/freezed_annotation.dart';
import 'photo.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(1) int page,
    @Default(<Photo>[]) List<Photo> photos,
    @Default(true) bool isLoading,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
