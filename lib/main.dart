import 'package:comments/bloc/comments_bloc/comments_bloc.dart';
import 'package:comments/repo/comments_repo.dart';
import 'package:comments/ui/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(providers: [
        BlocProvider(
            create: (BuildContext context) =>
                Commentsbloc(repo: CommentsRepoImpl()))
      ], child: homepage()),
      debugShowCheckedModeBanner: false,
    );
  }
}
