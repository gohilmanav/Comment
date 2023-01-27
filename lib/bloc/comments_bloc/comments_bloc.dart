import 'package:comments/bloc/comments_bloc/comments_event.dart';
import 'package:comments/bloc/comments_bloc/comments_stats.dart';
import 'package:comments/model/comments_model.dart';
import 'package:comments/repo/comments_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Commentsbloc extends Bloc<Commentsevent,CommentsStats>
{
  CommentsRepoImpl repo;
  Commentsbloc({required this.repo}):super(CommentsInitialState()){
    on<FetchCommentsevent>(_onFetchCommentsEvent);
  }
  _onFetchCommentsEvent(FetchCommentsevent event,Emitter<CommentsStats>emit)async{
    try {
      emit (CommentsLoadingState());
    List<commentmodel>massage=await repo.getComments();
    if (massage.isEmpty) {
      emit(NoCommentsStates());
    }else{
      emit(CommentsLoadedState(massage: massage));
    }
    } catch (e) {
      emit(CommentsErrorState(massage: e .toString()));
    }
  }
  chtch(e){}
}