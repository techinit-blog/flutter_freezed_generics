// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      body: json['body'] as String,
      published_at: json['published_at'] as String,
      updated_at: json['updated_at'] as String,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'body': instance.body,
      'published_at': instance.published_at,
      'updated_at': instance.updated_at,
    };
