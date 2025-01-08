class PostModel {
  final int id;
  final String title;
  final String description;
  PostModel({required this.id, required this.title, required this.description});

  factory PostModel.fromjson(json){
    return PostModel(id: json['id'], title: json['title'], description: json['body']);
  }
}
