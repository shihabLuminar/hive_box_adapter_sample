import 'package:hive/hive.dart';

part 'student_model.g.dart';

@HiveType(typeId: 1)
class Student {
  @HiveField(0)
  String? rollNo;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? classNO;

  Student({this.classNO, this.name, this.rollNo});
}
