// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class Pagination<T> with _$Pagination<T> {
  const factory Pagination({
    required int total,
    required int per_page,
    required int current_page,
    required int last_page,
    required int from,
    required int to,
    required List<T> data,
  }) = _Pagination;

  factory Pagination.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PaginationFromJson<T>(json, fromJsonT);
}
