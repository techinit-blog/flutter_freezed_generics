import 'dart:convert';

import 'package:flutter_freezed_generics/models/pagination/pagination.dart';
import 'package:flutter_freezed_generics/models/post/post.dart';
import 'package:flutter_freezed_generics/server.dart';

Future<Pagination<Post>> getPosts() async {
  final res = await postsRes();
  final json = jsonDecode(res);
  return Pagination<Post>.fromJson(
      json, (Object? json) => Post.fromJson(json as Map<String, dynamic>));
}
