import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapi/feature/home/cubit/post_cubit/post_cubit_statue.dart';
import 'package:testapi/feature/home/data/service/post_service.dart';

class PostCubit extends Cubit<PostCubitStatue> {
  PostCubit() : super(Intialstatue());
  final PostService post = PostService();
  getDatacubit() async {
    emit(Loadingstatue());
 var response  = await post.getPost();

    emit(Succestate(model: response));
  }
}
