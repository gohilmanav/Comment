import 'package:comments/model/comments_model.dart';
import 'package:equatable/equatable.dart';

abstract class CommentsStats extends Equatable{}
class CommentsInitialState extends CommentsStats{
  @override
  List<Object?> get props=>[];
}
class CommentsNoInternetState extends CommentsStats{
  @override
 List<Object?> get props=>[];
}
class CommentsLoadingState extends CommentsStats{
  @override 
  List<Object?>get Props=>[];
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
class CommentsLoadedState extends CommentsStats{
  List <commentmodel> massage;
  CommentsLoadedState({required this.massage});
  List<Object?>get props=>[this.massage];
}
class NoCommentsStates extends CommentsStats{
  @override
List<Object?>get props=>[];
@override
String toString(){
  return"no Comments Data Available";
}
}
class CommentsErrorState extends CommentsStats{
  final String massage;
  CommentsErrorState({required this. massage});
  @override

List<Object?>get props => [this.massage];
@override 
String toString(){
  return massage;
}
}