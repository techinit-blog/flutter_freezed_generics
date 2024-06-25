import 'dart:convert';

final post = {
  'title': 'ジェネリクスを活用してFreezedモデルを効率よく定義する【Flutter】',
  'thumbnail':
      'https://techinit.co.jp/wp-content/uploads/2024/06/flutter-freezed-generics.png',
  'body': List.generate(10, (_) => 'ここにテキスト ').join(),
  'published_at': '2024/01/01 19:24',
  'updated_at': '2024/07/01 20:48',
};

Future<String> postsRes() async {
  await Future.delayed(const Duration(seconds: 2));
  final posts = List.generate(10, (_) => post);
  return jsonEncode({
    'total': 78,
    'per_page': 10,
    'current_page': 3,
    'last_page': 8,
    'from': 31,
    'to': 40,
    'data': posts,
  });
}
