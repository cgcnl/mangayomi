import 'package:isar_community/isar.dart';
import 'package:mangayomi/models/chapter.dart';
part 'update.g.dart';

@collection
@Name("Update")
class Update {
  Id? id;

  int? mangaId;

  String? chapterName;

  final chapter = IsarLink<Chapter>();

  String? date;

  int? updatedAt;

  bool? isNsfw;

  Update({
    this.id = Isar.autoIncrement,
    required this.mangaId,
    required this.chapterName,
    required this.date,
    this.updatedAt = 0,
    required this.isNsfw,
  });

  Update.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mangaId = json['mangaId'];
    chapterName = json['chapterName'];
    date = json['date'];
    updatedAt = json['updatedAt'];
    isNsfw = json['isNsfw'];
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'mangaId': mangaId,
    'chapterName': chapterName,
    'date': date,
    'updatedAt': updatedAt ?? 0,
    'isNsfw': isNsfw ?? false,
  };
}
