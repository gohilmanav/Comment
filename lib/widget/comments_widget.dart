import 'package:comments/model/comments_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CommentsWidget extends StatefulWidget {
  commentmodel comment;
  CommentsWidget({Key? key, required this.comment}) : super(key: key);

  @override
  State<CommentsWidget> createState() => _CommentsWidgetState();
}

class _CommentsWidgetState extends State<CommentsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
          child: Column(
      children: [
        Text(
          "${widget.comment.name}",
          style: TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "${widget.comment.email}",
          style: TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "${widget.comment.body}",
          style: TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        )
      ],
    ),
        );
  }
}
