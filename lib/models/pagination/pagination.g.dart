// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationImpl<T> _$$PaginationImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginationImpl<T>(
      total: (json['total'] as num).toInt(),
      per_page: (json['per_page'] as num).toInt(),
      current_page: (json['current_page'] as num).toInt(),
      last_page: (json['last_page'] as num).toInt(),
      from: (json['from'] as num).toInt(),
      to: (json['to'] as num).toInt(),
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$PaginationImplToJson<T>(
  _$PaginationImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total': instance.total,
      'per_page': instance.per_page,
      'current_page': instance.current_page,
      'last_page': instance.last_page,
      'from': instance.from,
      'to': instance.to,
      'data': instance.data.map(toJsonT).toList(),
    };
