import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinitelistapp/blocs/comment_bloc.dart';
import 'package:infinitelistapp/events/comment_events.dart';
import 'package:infinitelistapp/infinite_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: BlocProvider(
          create: (context) => CommentBloc()..add(CommentFetchedEvent()),
          child: InfiniteList(),
        ));
  }
}
