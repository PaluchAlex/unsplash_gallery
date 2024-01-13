import 'package:freezed_annotation/freezed_annotation.dart';

import 'app_action.dart';

part 'set.freezed.dart';

@freezed
class SetQuery with _$SetQuery implements AppAction {
  const factory SetQuery(String query) = SetQuery$;
}
