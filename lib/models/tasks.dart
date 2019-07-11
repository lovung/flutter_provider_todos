import 'package:todos/models/tags.dart';

class TaskModel {
  int id;
  String name;
  bool done;
  String description;
  DateTime start;
  List<TagModel> tags;

  TaskModel(
      {this.id, this.name, this.done, this.description, this.start, this.tags});

  TaskModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    done = json['done'];
    description = json['description'];
    start = DateTime.fromMillisecondsSinceEpoch(json['start'] * 1000);
    var jsonTags = json['tags'];
    final List<TagModel> tags = new List<TagModel>();
    jsonTags.forEach((element) {
      var tag = TagModel.fromJson(element);
      if (tag != null) {
        tags.add(tag);
      }
    });
  }
}
