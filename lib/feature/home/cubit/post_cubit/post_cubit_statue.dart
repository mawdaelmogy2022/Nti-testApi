import 'package:testapi/feature/home/data/model/post_model.dart';

class PostCubitStatue {}

class Intialstatue extends PostCubitStatue {}

class Loadingstatue extends PostCubitStatue {}

class Succestate extends PostCubitStatue {
  final List<PostModel> model;
  Succestate({required this.model});
}

class Failurestate extends PostCubitStatue {
  final String erroMessage;
  Failurestate({required this.erroMessage});
}
