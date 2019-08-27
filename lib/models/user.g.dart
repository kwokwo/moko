// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..businessId = json['businessId'] as num
    ..businessType = json['businessType'] as num
    ..channel = json['channel'] as String
    ..currentTime = json['currentTime'] as num
    ..id = json['id'] as num
    ..name = json['name'] as String
    ..nameEn = json['nameEn'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'businessId': instance.businessId,
      'businessType': instance.businessType,
      'channel': instance.channel,
      'currentTime': instance.currentTime,
      'id': instance.id,
      'name': instance.name,
      'nameEn': instance.nameEn,
      'username': instance.username
    };
