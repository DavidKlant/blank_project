// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationModel _$$_NotificationModelFromJson(Map<String, dynamic> json) =>
    _$_NotificationModel(
      id: json['id'] as int,
      body: json['body'] as String,
      title: json['title'],
      scheduledDate: DateTime.parse(json['scheduledDate'] as String),
    );

Map<String, dynamic> _$$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'title': instance.title,
      'scheduledDate': instance.scheduledDate.toIso8601String(),
    };
