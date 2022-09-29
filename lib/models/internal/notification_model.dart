import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  // add this to be able to add custom methods
  const NotificationModel._();

  const factory NotificationModel({
    required int id,
    required String body,
    title,
    required DateTime scheduledDate,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, Object?> json) =>
      _$NotificationModelFromJson(json);
}
