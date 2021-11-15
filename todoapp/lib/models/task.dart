import 'package:todoapp/models/category.dart';

class Task {
final String title;
final DateTime dueTime;
final bool isDone;
final Category category;

  Task(
    this.title,
     this.dueTime, 
     this.isDone, this.category
     );
}