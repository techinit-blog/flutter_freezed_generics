import 'package:flutter/material.dart';
import 'package:flutter_freezed_generics/api.dart';
import 'package:flutter_freezed_generics/models/pagination/pagination.dart';
import 'package:flutter_freezed_generics/models/post/post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  const _MyHomePage();

  @override
  State<_MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  late Future<Pagination<Post>> futurePosts;

  @override
  void initState() {
    super.initState();
    futurePosts = getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('記事一覧'),
      ),
      body: FutureBuilder(
        future: futurePosts,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          return _PostListView(posts: snapshot.data!.data);
        },
      ),
    );
  }
}

class _PostListView extends StatelessWidget {
  final List<Post> posts;
  const _PostListView({required this.posts});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: ListView(
            children: posts.map((post) {
          return ListTile(
              leading: Image.network(post.thumbnail),
              title: Text(post.title),
              subtitle: Text(post.published_at));
        }).toList()));
  }
}
