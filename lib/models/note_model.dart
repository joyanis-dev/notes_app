import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class Note extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final String createdAt;
  @HiveField(3)
  final int color;

  Note({
    required this.title,
    required this.content,
    required this.createdAt,
    required this.color,
  });
}
