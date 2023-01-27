import 'package:comments/bloc/comments_bloc/comments_bloc.dart';
import 'package:comments/bloc/comments_bloc/comments_stats.dart';
import 'package:comments/widget/comments_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(
            "Comments",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      body: SafeArea(
          child: Align(
              alignment: Alignment.center,
              child: BlocBuilder<Commentsbloc, CommentsStats>(
                builder: (context, state) {
                  if (state is CommentsInitialState ||
                      state is CommentsLoadingState)
                    return CircularProgressIndicator(
                      backgroundColor: Colors.black,
                      color: Colors.white,
                    );
                 if (state is CommentsLoadedState) {
                    return Padding(
                      padding: EdgeInsets.all(20),
                      child: ListView.separated(
                          itemCount: state.massage.length,
                          itemBuilder: (context, index) {
                            return CommentsWidget(
                                comment: state.massage[index]);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 20,
                            );
                          }),
                    );
                  } 
                   if (state is NoCommentsStates ||
                      state is CommentsErrorState) {
                    return Text(state.toString());
                  }
                   return Container();
                },
              ))),
    );
  }
}
