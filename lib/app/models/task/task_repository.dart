import 'package:todo_getx_hive/app/models/task/task_model.dart';

abstract class TaskRepository {
  Future<void> save({required DateTime date, required String description});
  Future<void> delete(String uuid);
  Future<void> clearAll();
  Future<List<TaskModel>> readAll();
  Future<List<TaskModel>> findByPeriod(
      {required DateTime start, DateTime? end});
  Future<void> checkOrUncheckTask(TaskModel task);
}