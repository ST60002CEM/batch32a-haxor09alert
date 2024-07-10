// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['fullname'] as String?,
      json['email'] as String?,
      json['password'] as String?,
      json['phone'] as String?,
      json['address'] as String?,
      json['bio'] as String?,
      json['gender'] as String?,
      json['isAdmin'] as bool?,
      json['profile'] as String?,
      id: json['id'] as String? ?? "",
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'address': instance.address,
      'bio': instance.bio,
      'gender': instance.gender,
      'isAdmin': instance.isAdmin,
      'profile': instance.avatar,
    };
