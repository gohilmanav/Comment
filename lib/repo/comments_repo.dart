import 'package:comments/config/constant.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:comments/model/comments_model.dart';

abstract class CommentRepo{
  Future<List<commentmodel>> getComments();
}
class CommentsRepoImpl implements CommentRepo{
  @override 
  Future<List<commentmodel>>getComments()async{
    http.Response response = await http.get(Uri.parse(AppAPI.commentsurl));
    if (response.statusCode==200){
      var data = json.decode(response.body);
      List<commentmodel>massage=(await commentmodel.fromJson(data))as List<commentmodel>;
      return massage;
    }else{
      throw Exception();
    }
  }
}